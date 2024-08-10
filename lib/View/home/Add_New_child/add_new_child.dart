import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/confirm_bottom_sheet.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/bottom_navbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../View_model/radio_button.dart';
import '../../../Resources/font_resources.dart';
import '../../../Reusable_components/Fields/counter_field.dart';
import '../../../Reusable_components/Buttons/radio_button.dart';
import '../../../View_model/child_view_model.dart';

class AddNewChildView extends StatelessWidget {
  final String text;
  AddNewChildView({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChildFormViewModel()),
        ChangeNotifierProvider(create: (context) => RadioButtonViewModel()),
      ],
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: CustomBackButton(),
          centerTitle: true,
          title: TextWidget(
            text: 'إضافة طفل جديد',
            color: ColorsManager.black,
            fontsize: 16.sp,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0.r),
          child: Consumer2<ChildFormViewModel, RadioButtonViewModel>(
            builder: (context, childViewModel, radioViewModel, child) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50.r,
                        backgroundImage: AssetImage(AssetsResource.BrokenPng),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _GenderSelectionButton(
                          GenderSign: AssetsResource.FemaleSignSVG,
                          Photo: AssetsResource.FemaleSVG,
                          label: 'أنثى',
                          isSelected: !childViewModel.isMale,
                          onTap: () => childViewModel.setGender(false),
                        ),
                        SizedBox(width: 16),
                        _GenderSelectionButton(
                          GenderSign: AssetsResource.MaleSignSVG,
                          label: 'ذكر',
                          isSelected: childViewModel.isMale,
                          onTap: () => childViewModel.setGender(true),
                          Photo: AssetsResource.MaleSVG,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        labelText: 'الإسم',
                        labelStyle: TextStyle(
                          fontFamily: FontResources.fontFamily,
                          fontSize: 14.sp,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      onChanged: (value) {
                        childViewModel.setName(value);
                      },
                    ),
                    SizedBox(height: 16.h),
                    CounterWidget(),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: TextWidget(
                        text: 'هل يوجد مشاكل صحية',
                        color: ColorsManager.black,
                        fontsize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    RadioButton(
                      label: 'نعم',
                      value: 1,
                      text: text,
                      groupValue: radioViewModel.groupValue,
                      onChanged: radioViewModel.setGroupValue,
                      isSelected: radioViewModel.groupValue == 1,
                      onSelected: () {},
                    ),
                    RadioButton(
                      label: 'لا',
                      value: 2,
                      text: '',
                      groupValue: radioViewModel.groupValue,
                      onChanged: radioViewModel.setGroupValue,
                      isSelected: radioViewModel.groupValue == 2,
                      onSelected: () {},
                    ),
                    SizedBox(height: 16.h),
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontFamily: FontResources.fontFamily,
                          fontSize: 12.sp,
                        ),
                        labelText: 'ملاحظات',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: ColorsManager.med_grey,
                          ),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      maxLines: 4,
                      onChanged: (value) {
                        childViewModel.setNotes(value);
                      },
                    ),
                    SizedBox(height: 16.h),
                    LargeButton(
                      text: 'حفظ',
                      onPressed: () {
                        if (childViewModel.isFormValid) {
                          _saveChild(childViewModel);
                        }
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => ConfirmButtonSheet(
                              buttonMessage_1: 'الصفحة الرئيسية',
                              message: "تم إضافة طفلك بنجاح !",
                              Description: "",
                              targetScreen_1: BottomNavBarView()),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _saveChild(ChildFormViewModel viewModel) {
    // Logic to save the child details
    print('Child saved: ${viewModel.name}');
  }
}

class _GenderSelectionButton extends StatelessWidget {
  final String label;
  final String Photo;
  final String GenderSign;
  final bool isSelected;
  final VoidCallback onTap;

  _GenderSelectionButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.Photo,
    required this.GenderSign,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.w,
            color: isSelected ? ColorsManager.primary : ColorsManager.med_grey,
          ),
          color:
              isSelected ? ColorsManager.backGroundColor : ColorsManager.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SvgPicture.asset(Photo),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    TextWidget(
                      text: label,
                      color: ColorsManager.black,
                    ),
                    SvgPicture.asset(GenderSign),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
