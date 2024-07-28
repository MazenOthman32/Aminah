import 'dart:ui';

import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/large_button.dart';
import 'package:amina/reusable_components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../Resources/color_resources.dart';
import '../../../Reusable_components/user_avatar.dart';
import '../../../View_model/babysitter_request_form_view_model.dart';
import '../../../View_model/home_view_model.dart';

class BabysitterRequestForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BabysitterRequestViewModel>(context);
    final TextEditingController neighborhoodController =
        TextEditingController(text: viewModel.request.DistrictName);
    final TextEditingController notesController =
        TextEditingController(text: viewModel.request.notes);

    Future<void> _selectTimeFrom(BuildContext context) async {
      final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (picked != null && picked != viewModel.request.timeFrom)
        viewModel.setTimeFrom(picked);
    }

    Future<void> _selectTimeTo(BuildContext context) async {
      final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
      if (picked != null && picked != viewModel.request.timeTo)
        viewModel.setTimeTo(picked);
    }

    Future<void> _selectDateFrom(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2101),
      );
      if (picked != null) {
        viewModel.setDateFrom(picked);
      }
    }

    Future<void> _selectDateTo(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2101),
      );
      if (picked != null) {
        viewModel.setDateTo(picked);
      }
    }

    Widget _buildLocationOption({
      required bool value,
      required bool groupValue,
      required String label,
      required Function(bool?) onChanged,
    }) {
      return GestureDetector(
        onTap: () => onChanged(value),
        child: Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 1.15,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.med_grey),
            borderRadius: BorderRadius.circular(16.0.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 8.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: label,
                color: ColorsManager.black,
                fontsize: 12.sp,
              ),
              Radio<bool>(
                value: value,
                activeColor: ColorsManager.primary,
                groupValue: groupValue,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      );
    }

    Widget _buildInkWellField({
      required String label,
      required String value,
      required String icon,
      required VoidCallback onTap,
    }) {
      return InkWell(
        onTap: onTap,
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            suffixIcon: ImageIcon(
              AssetImage(icon),
            ),
            labelStyle: TextStyle(fontFamily: FontResources.fontFamily),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0.r),
              borderSide: BorderSide(color: ColorsManager.med_grey),
            ),
          ),
          child: Container(
            height: 20.h,
            child: Text(
              value,
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
        ),
      );
    }

    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextWidget(
            text: 'طلب جليسة أطفال',
            color: ColorsManager.black,
            fontsize: 16.sp,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: neighborhoodController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: 'اسم الحي',
                    labelStyle: TextStyle(
                      fontFamily: FontResources.fontFamily,
                      fontSize: 14.sp,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    viewModel.setNeighborhood(value);
                  },
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _buildInkWellField(
                        icon: AssetsResource.CalendarPng,
                        label: 'التاريخ من',
                        value: viewModel.request.dateFrom == null
                            ? ''
                            : viewModel.request.dateFrom!
                                .toLocal()
                                .toString()
                                .split(' ')[0],
                        onTap: () => _selectDateFrom(context),
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Expanded(
                      child: _buildInkWellField(
                        icon: AssetsResource.CalendarPng,
                        label: 'التاريخ إلى',
                        value: viewModel.request.dateTo == null
                            ? ''
                            : viewModel.request.dateTo!
                                .toLocal()
                                .toString()
                                .split(' ')[0],
                        onTap: () => _selectDateTo(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _buildInkWellField(
                        icon: AssetsResource.ClockPng,
                        label: 'الساعة من',
                        value: viewModel.request.timeFrom == null
                            ? ''
                            : viewModel.request.timeFrom!.format(context),
                        onTap: () => _selectTimeFrom(context),
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Expanded(
                      child: _buildInkWellField(
                        icon: AssetsResource.ClockPng,
                        label: 'الساعة إلى',
                        value: viewModel.request.timeTo == null
                            ? ''
                            : viewModel.request.timeTo!.format(context),
                        onTap: () => _selectTimeTo(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Divider(
                  height: 10.h,
                  color: ColorsManager.med_grey,
                  thickness: 3.h,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
                  child: Row(
                    children: [
                      TextWidget(
                        text: 'أطفالي',
                        color: ColorsManager.black,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Consumer<HomeViewModel>(
                        builder: (context, viewModel, child) {
                          return Row(
                            children: [
                              Row(children: viewModel.kids),
                              UserAvatar(
                                imagePath: AssetsResource.Kid_1_Png,
                                name: '',
                                isAddButton: true,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Divider(
                  height: 10.h,
                  color: ColorsManager.med_grey,
                  thickness: 3.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 10.w, bottom: 16.h, top: 16.h),
                  child: Row(
                    children: [
                      TextWidget(
                        text: 'المكان',
                        color: ColorsManager.black,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        _buildLocationOption(
                          value: true,
                          groupValue: viewModel.request.isInsideHouse,
                          label: 'داخل المنزل',
                          onChanged: (value) {
                            viewModel.setIsInsideHouse(value!);
                          },
                        ),
                        SizedBox(height: 10.h),
                        _buildLocationOption(
                          value: false,
                          groupValue: viewModel.request.isInsideHouse,
                          label: 'خارج المنزل',
                          onChanged: (value) {
                            viewModel.setIsInsideHouse(value!);
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                Divider(
                  height: 10.h,
                  color: ColorsManager.med_grey,
                  thickness: 3.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: TextField(
                    controller: notesController,
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
                      viewModel.setNotes(value);
                    },
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: LargeButton(
                    buttonColor: ColorsManager.med_grey,
                    leftPadding: 10.w,
                    rightPadding: 10.w,
                    text: "إرسال طلب",
                    onPressed: () => viewModel.submitRequest(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
