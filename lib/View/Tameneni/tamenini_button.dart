import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Tameneni/Chat/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TameniniButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.Secondery, // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.r), // Rounded edges
        ),
        padding: EdgeInsets.symmetric(horizontal: 36.0.w, vertical: 8.0.h),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatView(),
            ));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
          ),
          SizedBox(width: 8.0.w),
          TextWidget(
            text: 'طمّنيني',
            color: Colors.white, // Font size
          ),
        ],
      ),
    );
  }
}
