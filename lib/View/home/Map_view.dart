import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حدد المكان على الخريطة'),
      ),
      body: Column(
        children: [
          Container(
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
            padding: EdgeInsets.all(16.0.w),
            child: TextWidget(
              text: 'شارع الملك سلمان, 523 عمارة 12',
              color: ColorsManager.black,
              fontsize: 14.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: SizedBox(
                width: double.infinity,
                child: LargeButton(
                  text: 'حفظ',
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
