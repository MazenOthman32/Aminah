import 'package:flutter/material.dart';

class OrderTrackingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'متابعة الطلب',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        TrackingStep(
          date: 'الثلاثاء 5/2 5:30 م',
          step: 'تم تأكيد الطلب',
        ),
        TrackingStep(
          date: 'الثلاثاء 5/2 5:30 م',
          step: 'فقد وصلت الجليسة',
        ),
        TrackingStep(
          date: 'الثلاثاء 5/2 5:30 م',
          step: 'بداية الخدمة',
        ),
        TrackingStep(
          date: 'الثلاثاء 5/2 5:30 م',
          step: 'نهاية الخدمة',
        ),
      ],
    );
  }
}

class TrackingStep extends StatelessWidget {
  final String date;
  final String step;

  TrackingStep({required this.date, required this.step});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(radius: 5, backgroundColor: Colors.blue),
            Container(width: 1, height: 20, color: Colors.blue),
          ],
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date, style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text(step, style: TextStyle(fontSize: 14)),
          ],
        ),
      ],
    );
  }
}
