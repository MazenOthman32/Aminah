import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'فرح يوسف',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text('4.6'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
