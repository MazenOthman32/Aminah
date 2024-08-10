import 'package:flutter/material.dart';
import '../../Resources/assets_resources.dart';
import '../Reusable_components/Items/user_avatar.dart';

class HomeViewModel extends ChangeNotifier {
  List<UserAvatar> kids = [
    UserAvatar(
      imagePath: AssetsResource.Kid_1_Png,
      name: 'أمير',
      onTap: () {},
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_4_Png,
      name: 'سليم',
      onTap: () {},
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_2_Png,
      name: 'فريدة',
      onTap: () {},
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_3_Png,
      name: 'مالك',
      onTap: () {},
    ),
  ];

  void addUserAvatar(UserAvatar userAvatar) {
    kids.add(userAvatar);
    notifyListeners();
  }

  void removeUserAvatar(UserAvatar userAvatar) {
    kids.remove(userAvatar);
    notifyListeners();
  }
}
