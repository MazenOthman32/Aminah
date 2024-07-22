import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/on_boarding/splash_view.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  runApp(
    const Amina(),
    // DevicePreview(
    //   builder: (context) => const Amina(),
    // ),
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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Directionality(
            textDirection: TextDirection.rtl,
            child: SplashView(),
          ),
        );
      },
    );
  }
}
