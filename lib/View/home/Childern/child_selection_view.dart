import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../View_model/child_selection_view_model.dart';

class ChildSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChildSelectionViewModel(),
      child: Consumer<ChildSelectionViewModel>(
        builder: (context, viewModel, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.children.length,
                  itemBuilder: (context, index) {
                    final child = viewModel.children[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(child.imagePath),
                                    ),
                                    SizedBox(width: 10.0),
                                    TextWidget(
                                      text: child.name,
                                      color: ColorsManager.black,
                                      fontsize: 14.sp,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Checkbox(
                                    value: child.isSelected,
                                    onChanged: (value) {
                                      viewModel.toggleSelection(index);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
