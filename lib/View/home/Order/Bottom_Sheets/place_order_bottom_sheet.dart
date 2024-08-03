import 'package:amina/Reusable_components/Bottom_Sheets/text_field_button_sheet.dart';
import 'package:amina/View/home/Order/BabySitter_Order/babysitter_request_form_view.dart';
import 'package:flutter/material.dart';

class PlaceOrderBottomSheet extends StatelessWidget {
  const PlaceOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldBottomSheet(
      buttonMessage: 'حفظ',
      message: 'من فضلك اكتب إسم المكان',
      hintText: 'إسم المكان',
    );
  }
}
