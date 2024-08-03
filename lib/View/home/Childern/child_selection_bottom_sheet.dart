import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../Resources/color_resources.dart';
import '../../../Resources/font_resources.dart';
import '../../../Reusable_components/Buttons/large_button.dart';
import '../../../Reusable_components/Helper_Widgets/text_widget.dart';
import '../../../View_model/child_selection_view_model.dart';

class ChildSelectionBottomSheet extends StatelessWidget {
  final String message;
  final String buttonMessage;
  final Widget targetScreen;
  final Function()? onTap;

  const ChildSelectionBottomSheet({
    super.key,
    required this.buttonMessage,
    required this.message,
    required this.targetScreen,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ChildSelectionViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0.r),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontResources.fontFamily,
                  ),
                ),
                SizedBox(height: 16.0.h),
                SizedBox(
                  height: 180.h, // Adjust the height as needed
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: viewModel.children.length,
                    itemBuilder: (context, index) {
                      final child = viewModel.children[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          children: [
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage(child.imagePath),
                                      ),
                                      SizedBox(width: 10.0),
                                      TextWidget(
                                        text: child.name,
                                        color: ColorsManager.black,
                                        fontsize: 14.sp,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Checkbox(
                                      activeColor: ColorsManager.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      value: child.isSelected,
                                      onChanged: (value) {
                                        viewModel.toggleSelection(index);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.0.h),
                LargeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => targetScreen,
                      ),
                    );
                  },
                  text: buttonMessage,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
