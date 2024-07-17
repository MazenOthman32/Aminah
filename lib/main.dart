import 'package:flutter/material.dart';
import 'view/on_boarding/splash_view.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  runApp(
    DevicePreview(
      builder: (context) => const Amina(),
    ),
  );
}

class Amina extends StatelessWidget {
  const Amina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
