import 'package:amina/Reusable_components/Cards/offer_section_card.dart';
import 'package:amina/View/home/bottom_navbar_view.dart';
import 'package:amina/View/home/home__view.dart';
import 'package:amina/View/home/Talabaty/info_view.dart';
import 'package:flutter/material.dart';

import '../../../../Reusable_components/Bottom_Sheets/confirm_bottom_sheet.dart';
import '../../Offers/offer_section_view.dart';

class ConfirmOrderBottomSheetView extends StatelessWidget {
  const ConfirmOrderBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfirmButtonSheet(
        buttonMessage_1: 'متابعة العروض',
        buttonMessage_2: 'الصفحة الرئيسية',
        message: 'تم إرسال طلب جليسة الاطفال بنجاح!',
        Description:
            'يمكنك متابعة العروض المقدمة من قبل جليسات الأطفال وإختيار الانسب لك ولطفلك من هنا',
        targetScreen_1: OfferSectionView(),
        targetScreen_2: BottomNavBarView());
  }
}
