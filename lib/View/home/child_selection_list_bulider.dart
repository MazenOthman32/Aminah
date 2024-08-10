import 'package:amina/Reusable_components/Items/user_avatar.dart';
import 'package:amina/View/home/Order/Home_Nursery/home_nursery_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../View_model/child_selection_view_model.dart';
import 'Childern/child_selection_bottom_sheet.dart';

class SelectedChildrenScreen extends StatelessWidget {
  @override
  final Widget targetScreen;
  SelectedChildrenScreen({required this.targetScreen});
  Widget build(BuildContext context) {
    final selectedChildren =
        Provider.of<ChildSelectionViewModel>(context).getSelectedChildren();

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: selectedChildren.length + 1,
      itemBuilder: (context, index) {
        if (index == selectedChildren.length) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: UserAvatar(
              isAddButton: true,
              name: '',
              imagePath: '',
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (context) => ChildSelectionBottomSheet(
                  buttonMessage: 'حفظ',
                  message: 'قم بتحديد أطفالك',
                  targetScreen: targetScreen,
                ),
              ),
            ),
          );
        } else {
          final child = selectedChildren[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(child.imagePath),
                  radius: 24.r,
                ),
                SizedBox(height: 8.h),
                Text(child.name),
              ],
            ),
          );
        }
      },
    );
  }
}
