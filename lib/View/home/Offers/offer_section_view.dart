import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/View_model/offer_section_card_view_model.dart';
import '../../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../Reusable_components/Cards/offer_section_card.dart';

class OfferSectionView extends StatelessWidget {
  OfferSectionView({super.key});
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OfferSectionCardViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        centerTitle: true,
        title: TextWidget(
          text: 'العروض',
          color: ColorsManager.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.r),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'طلب رقم #22',
                  color: ColorsManager.black,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.offers.length,
              itemBuilder: (context, index) {
                final offer = viewModel.offers[index];
                return OfferCardSection(offer: offer);
              },
            ),
          ),
        ],
      ),
    );
  }
}
