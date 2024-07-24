import 'package:amina/View/on_boarding/on_boarding_view.dart';
import 'package:amina/View_model/day_order_view_model.dart';
import 'package:amina/View_model/on_boarding_view_model.dart';
import 'package:amina/View_model/otp_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'View_model/offer_card_view_model.dart';
import 'view/on_boarding/splash_view.dart';

void main() async {
  runApp(
    const Amina(),
  );
}

class Amina extends StatelessWidget {
  const Amina({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => OfferCardViewModel()),
            ChangeNotifierProvider(create: (_) => OnBoardingViewModel()),
            ChangeNotifierProvider(create: (_) => OtpViewModel()),
            ChangeNotifierProvider(create: (_) => DayOrderViewModel()),
          ],
          child: MaterialApp(
            locale: Locale('ar'),
            supportedLocales: [
              Locale('ar'),
            ],
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            home: SplashView(),
          ),
        );
      },
    );
  }
}
