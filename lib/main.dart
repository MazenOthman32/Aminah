import 'package:amina/View_model/chat_message_view_model.dart';
import 'package:amina/View_model/child_selection_view_model.dart';
import 'package:amina/View_model/counter_widget_view_model.dart';
import 'package:amina/View_model/day_order_view_model.dart';
import 'package:amina/View_model/notification_view_model.dart';
import 'package:amina/View_model/on_boarding_view_model.dart';
import 'package:amina/View_model/otp_view_model.dart';
import 'package:amina/View_model/time_extend_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'View_model/another_payment_way_view_model.dart';
import 'View_model/order_steps_view_model.dart';
import 'View_model/radio_button.dart';
import 'View_model/babysitter_request_form_view_model.dart';
import 'View_model/bottom_navbar_view_model.dart';
import 'View_model/home_nursery_form_view_model.dart';
import 'View_model/offer_card_view_model.dart';
import 'View_model/offer_section_card_view_model.dart';
import 'View_model/payment_view_model.dart';
import 'View_model/place_order_view_model.dart';
import 'View_model/rating_view_model.dart';
import 'View_model/round_button_view_model.dart';
import 'View_model/tab_bar_view_model.dart';
import 'View_model/timer_view_model.dart';
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
            ChangeNotifierProvider(create: (_) => BottomNavBarViewModel()),
            ChangeNotifierProvider(create: (_) => BabysitterRequestViewModel()),
            ChangeNotifierProvider(create: (_) => HomeNurseryFormViewModel()),
            ChangeNotifierProvider(create: (_) => PlaceOrderViewModel()),
            ChangeNotifierProvider(create: (_) => ChildSelectionViewModel()),
            ChangeNotifierProvider(create: (_) => RadioButtonViewModel()),
            ChangeNotifierProvider(create: (_) => OfferSectionCardViewModel()),
            ChangeNotifierProvider(create: (_) => AnotherPaymentWayViewModel()),
            ChangeNotifierProvider(create: (_) => PaymentViewModel()),
            ChangeNotifierProvider(create: (_) => TapBarViewModel()),
            ChangeNotifierProvider(create: (_) => RoundButtonViewModel()),
            ChangeNotifierProvider(create: (_) => OrderStepsViewModel()),
            ChangeNotifierProvider(create: (_) => RatingViewModel()),
            ChangeNotifierProvider(create: (_) => TimerViewModel()),
            ChangeNotifierProvider(create: (_) => ChatViewModel()),
            ChangeNotifierProvider(create: (_) => TimeExtendViewModel()),
            ChangeNotifierProvider(create: (_) => NotificationViewModel()),
            ChangeNotifierProvider(create: (_) => CounterViewModel()),
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
