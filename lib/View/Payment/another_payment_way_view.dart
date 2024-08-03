import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../View_model/another_payment_way_view_model.dart';

class AnotherPaymentWayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AnotherPaymentWayViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: TextWidget(
            text: 'إضافة كارت جديد',
            color: ColorsManager.black,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              TextField(
                controller: context
                    .watch<AnotherPaymentWayViewModel>()
                    .cardNumberController,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontFamily: FontResources.fontFamily),
                  labelText: 'رقم البطاقة',
                ),
              ),
              TextField(
                controller: context
                    .watch<AnotherPaymentWayViewModel>()
                    .cardHolderNameController,
                decoration: InputDecoration(
                  labelText: 'الاسم على البطاقة',
                  labelStyle: TextStyle(fontFamily: FontResources.fontFamily),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: context
                          .watch<AnotherPaymentWayViewModel>()
                          .expiryDateController,
                      decoration: InputDecoration(
                        labelText: 'تاريخ الإنتهاء',
                        labelStyle:
                            TextStyle(fontFamily: FontResources.fontFamily),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: context
                          .watch<AnotherPaymentWayViewModel>()
                          .cvvController,
                      decoration: InputDecoration(
                        labelText: 'CVV',
                        labelStyle:
                            TextStyle(fontFamily: FontResources.fontFamily),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('حفظ البطاقة'),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.read<AnotherPaymentWayViewModel>().saveCardDetails();
                },
                child: TextWidget(
                    text: 'قبول ودفع 500 ر.س', color: ColorsManager.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
