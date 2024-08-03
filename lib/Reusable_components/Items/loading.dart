import 'package:flutter/material.dart';
import '../../resources/color_resources.dart';

class Loading extends StatelessWidget {
  final Color? color;
  Loading({this.color = ColorsManager.backGroundColor});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
