import 'package:flutter/material.dart';

import '../../Resources/assets_resources.dart';
import '../../Reusable_components/user_avatar.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserAvatar(
        imagePath: AssetsResource.Kid_1_Png,
        name: 'Amir',
        isAddButton: false,
      ),
    );
  }
}
