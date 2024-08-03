import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DetailItem(title: '35 عام', icon: Icons.cake),
        DetailItem(title: 'جليسة أطفال', icon: Icons.work),
      ],
    );
  }
}

class DetailItem extends StatelessWidget {
  final String title;
  final IconData icon;

  DetailItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(
          height: 4.h,
        ),
        Text(title),
      ],
    );
  }
}
