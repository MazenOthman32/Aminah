import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 7),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(),
              Lottie.asset(
                AssetsResource.LogoLottie,
                width: 300.w,
                height: 300.h,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50.h),
                  child: const CircularProgressIndicator(
                    color: ColorsManager.primary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
