import 'package:amina/Models/home_nursery_request_model.dart';
import 'package:amina/View_model/place_order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../Resources/font_resources.dart';
import '../Buttons/large_button.dart';

class TextFieldBottomSheet extends StatelessWidget {
  final String message;
  final String hintText;
  final String buttonMessage;
  final Widget? targetScreen;
  final Function()? onTap;

  const TextFieldBottomSheet({
    super.key,
    required this.buttonMessage,
    required this.message,
    this.targetScreen,
    required this.hintText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PlaceOrderViewModel(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0.r),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
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
                  SizedBox(height: 8.0.h),
                  Consumer<PlaceOrderViewModel>(
                    builder: (context, viewModel, child) {
                      return TextFormField(
                        onChanged: (text) {
                          viewModel.setText(text);
                        },
                        decoration: InputDecoration(
                          hintText: hintText,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16.0.h),
                  Consumer<PlaceOrderViewModel>(
                    builder: (context, viewModel, child) {
                      return LargeButton(
                        onPressed: () {
                          HomeNurseryRequest(text: viewModel.text);
                          Navigator.pop(context);
                        },
                        text: buttonMessage,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
