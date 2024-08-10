import 'package:flutter/material.dart';
import '../Resources/assets_resources.dart';

class Child {
  final String name;
  final String imagePath;
  bool isSelected;

  Child({
    required this.name,
    required this.imagePath,
    this.isSelected = false,
  });
}

class ChildSelectionViewModel extends ChangeNotifier {
  List<Child> children = [
    Child(name: 'أمير', imagePath: AssetsResource.Kid_1_Png),
    Child(name: 'سليم', imagePath: AssetsResource.Kid_4_Png),
    Child(name: 'فريدة', imagePath: AssetsResource.Kid_2_Png),
    Child(name: 'مالك', imagePath: AssetsResource.Kid_3_Png),
  ];

  void toggleSelection(int index) {
    children[index].isSelected = !children[index].isSelected;
    notifyListeners();
  }

  List<Child> getSelectedChildren() {
    return children.where((child) => child.isSelected).toList();
  }

  void clearSelection() {
    for (var child in children) {
      child.isSelected = false;
    }
    notifyListeners();
  }
}
