import 'package:flutter/material.dart';
import '../../Reusable_components/large_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LargeButton(text: 'text', onPressed: () {}),
    );
  }
}
