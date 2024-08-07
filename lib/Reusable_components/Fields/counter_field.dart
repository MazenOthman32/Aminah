import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/counter_widget_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterViewModel(),
      child: Consumer<CounterViewModel>(
        builder: (context, viewModel, child) {
          TextEditingController _controller = TextEditingController(
            text: viewModel.counter.toString(),
          );

          void _onTextFieldChanged(String value) {
            int newValue = int.tryParse(value) ?? viewModel.counter;
            viewModel.updateCounter(newValue);
          }

          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            decoration: BoxDecoration(
              border: Border.all(color: ColorsManager.med_grey, width: 1.w),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'العمر',
                  color: ColorsManager.black,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorsManager.med_grey.withOpacity(.6),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: viewModel.incrementCounter,
                      ),
                    ),
                    Container(
                      width: 50,
                      child: TextField(
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: _onTextFieldChanged,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: viewModel.decrementCounter,
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
              ],
            ),
          );
        },
      ),
    );
  }
}
