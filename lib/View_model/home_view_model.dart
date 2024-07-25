import 'package:flutter/material.dart';
import '../../Resources/assets_resources.dart';
import '../../Reusable_components/user_avatar.dart';

class HomeViewModel extends ChangeNotifier {
  List<UserAvatar> kids = [
    UserAvatar(
      imagePath: AssetsResource.Kid_1_Png,
      name: 'أمير',
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_2_Png,
      name: 'سليم',
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_3_Png,
      name: 'فريدة',
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_4_Png,
      name: 'مالك',
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
