import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Reusable_components/Cards/offer_card.dart';
import '../../../View_model/offer_card_view_model.dart';

class OfferListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<OfferCardViewModel>(
      builder: (context, viewModel, child) {
        return PageView.builder(
          controller: viewModel.pageController,
          itemCount: viewModel.offers.length,
          onPageChanged: viewModel.onPageChanged,
          itemBuilder: (context, index) {
            return OfferCard(
              offer: viewModel.offers[index],
            );
          },
        );
      },
    );
  }
}
