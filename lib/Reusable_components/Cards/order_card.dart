import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Resources/color_resources.dart';
import '../../View_model/order_card_view_model.dart';

class OrderCard extends StatelessWidget {
  final OrderCardViewModel viewModel;

  const OrderCard({
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2.4,
        height: MediaQuery.of(context).size.height / 6,
        child: Container(
          child: ElevatedButton(
            onPressed: viewModel.onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SvgPicture.asset(
                  viewModel.imagePath,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0.h),
                  child: TextWidget(
                    text: viewModel.buttonText,
                    color: ColorsManager.black,
                    fontsize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
