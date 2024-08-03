import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Resources/color_resources.dart';
import '../Helper_Widgets/text_widget.dart';

class RadioButton extends StatelessWidget {
  final String label;
  final String text;
  final int value;
  final int groupValue;
  final Function(int?) onChanged;
  final bool isSelected;
  final Function()? onSelected;

  RadioButton({
    required this.label,
    required this.value,
    required this.text,
    required this.groupValue,
    required this.onChanged,
    required this.isSelected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return _buildRadioTile(
      context,
      label: label,
      value: value,
      text: text,
      groupValue: groupValue,
      onChanged: onChanged,
      isSelected: isSelected,
      onSelected: onSelected,
    );
  }
}

Widget _buildRadioTile(
  BuildContext context, {
  required String label,
  required String text,
  required int value,
  required int groupValue,
  required Function(int?) onChanged,
  required bool isSelected,
  Function()? onSelected,
}) {
  return Container(
    decoration: BoxDecoration(
      color: isSelected
          ? ColorsManager.primary.withOpacity(0.4)
          : Colors.transparent,
      border: Border.all(
        color: isSelected ? ColorsManager.primary : ColorsManager.med_grey,
        width: 2.0.w,
      ),
      borderRadius: BorderRadius.circular(16.0.r),
    ),
    margin: EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 2.0.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioListTile<int>(
          title: Align(
            alignment: Alignment.centerRight,
            child: TextWidget(
              textAlign: TextAlign.start,
              text: label,
              color: ColorsManager.black,
              fontsize: 14.sp,
            ),
          ),
          value: value,
          activeColor: ColorsManager.primary,
          groupValue: groupValue,
          onChanged: (newValue) {
            onChanged(newValue);
            if (onSelected != null) {
              onSelected();
            }
          },
          controlAffinity: ListTileControlAffinity.trailing,
          selectedTileColor: ColorsManager.primary.withOpacity(0.4),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0.w, bottom: 10.w),
          child: TextWidget(
            text: text,
            color: ColorsManager.black,
            fontsize: 10.sp,
          ),
        ),
      ],
    ),
  );
}
