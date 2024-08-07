import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/transactions_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DateRangeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<TransactionViewModel>(context);
    var selectedDateRange = viewModel.selectedDateRange;

    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: TextWidget(
              text: 'تصفية المعاملات',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          RadioListTile<String>(
            activeColor: ColorsManager.primary,
            title: const TextWidget(text: 'آخر أسبوع', color: Colors.black),
            value: 'الأسبوع الأخير',
            groupValue: selectedDateRange,
            onChanged: (value) {
              viewModel.selectDateRange(value!);
            },
          ),
          RadioListTile<String>(
            activeColor: ColorsManager.primary,
            title: const TextWidget(text: 'آخر شهر', color: Colors.black),
            value: 'الشهر الأخير',
            groupValue: selectedDateRange,
            onChanged: (value) {
              viewModel.selectDateRange(value!);
            },
          ),
          RadioListTile<String>(
            activeColor: ColorsManager.primary,
            title: const TextWidget(text: 'آخر 6 أشهر', color: Colors.black),
            value: 'آخر 6 أشهر',
            groupValue: selectedDateRange,
            onChanged: (value) {
              viewModel.selectDateRange(value!);
            },
          ),
          RadioListTile<String>(
            activeColor: ColorsManager.primary,
            title: const TextWidget(text: 'آخر سنة', color: Colors.black),
            value: 'السنة الأخيرة',
            groupValue: selectedDateRange,
            onChanged: (value) {
              viewModel.selectDateRange(value!);
            },
          ),
          RadioListTile<String>(
            activeColor: ColorsManager.primary,
            title: const TextWidget(text: 'الجميع', color: Colors.black),
            value: 'الجميع',
            groupValue: selectedDateRange,
            onChanged: (value) {
              viewModel.selectDateRange(value!);
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                  text: 'حفظ',
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
