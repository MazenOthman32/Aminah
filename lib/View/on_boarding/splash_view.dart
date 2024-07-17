import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
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
      Duration(seconds: 7),
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
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset(
                  AssetsResource.LogoLottie,
                  fit: BoxFit.cover,
                  width: 400,
                  height: 400,
                  repeat: true,
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: CircularProgressIndicator(
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
