import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoSection extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('اليوم 5:30 م - 8:30 م', style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Icon(Icons.attach_money, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('تم الدفع: 500 ر.س', style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('خارج الملك سلمان, 523 عمارة 12',
                  style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.note, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text('ملاحظات', style: TextStyle(fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}
