import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حدد منزلك على الخريطة'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ابحث على الخريطة',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Column(
              children: [
                Text(
                  'شارع الملك سلمان، 523 عمارة 12',
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 8.h),
                ElevatedButton(
                  onPressed: () {
                    // Handle save button press
                  },
                  child: Text('حفظ'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48.h),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
