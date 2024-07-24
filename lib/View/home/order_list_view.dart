import 'package:amina/View_model/day_order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Reusable_components/day_order_card.dart';

class DayOrderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DayOrderViewModel>(
      builder: (context, viewModel, child) {
        return PageView.builder(
          controller: viewModel.pageController,
          itemCount: viewModel.orders.length,
          onPageChanged: viewModel.onPageChanged,
          itemBuilder: (context, index) {
            return DayOrderCard(
              dayOrder: viewModel.orders[index],
            );
          },
        );
      },
    );
  }
}
