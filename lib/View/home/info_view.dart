import 'package:amina/Reusable_components/order_card.dart';
import 'package:flutter/material.dart';

import '../../Resources/assets_resources.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: OrderCard(
        imagePath: AssetsResource.FirstOnBoardingSVG,
        buttonText: 'إطلب جليسة اطفال',
        onPressed: () {},
      ),
    );
  }
}
