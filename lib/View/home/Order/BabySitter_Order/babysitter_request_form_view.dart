import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Buttons/radio_button.dart';
import 'package:amina/Reusable_components/Fields/small_field.dart';
import 'package:amina/View/home/Order/Bottom_Sheets/place_order_bottom_sheet.dart';
import 'package:flutter/material.dart';
import '../../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../View_model/radio_button.dart';
import '../../../../Resources/color_resources.dart';
import '../../../../View_model/babysitter_request_form_view_model.dart';
import '../../../../View_model/home_view_model.dart';
import '../../child_selection_list_bulider.dart';
import '../Bottom_Sheets/confirm_order_view_bottom_sheet.dart';
import '../../Map_view.dart';

class BabysitterRequestForm extends StatelessWidget {
  String text;
  BabysitterRequestForm({this.text = ' '});
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BabysitterRequestViewModel>(context);
    final TextEditingController neighborhoodController =
        TextEditingController(text: viewModel.request.districtName);
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

    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: CustomBackButton(),
          centerTitle: true,
          title: TextWidget(
            text: 'طلب جليسة أطفال',
            color: ColorsManager.black,
            fontsize: 16.sp,
          ),
        ),
        body: Consumer<RadioButtonViewModel>(
            builder: (context, radioViewModel, child) {
          return Padding(
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
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
                        child: SmallField(
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
                        child: SmallField(
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
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SmallField(
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
                        child: SmallField(
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
                  SizedBox(
                    height: 85.h, // Adjust the height as needed
                    child: SelectedChildrenScreen(
                      targetScreen: BabysitterRequestForm(),
                    ),
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
                  Column(
                    children: [
                      RadioButton(
                        label: 'داخل المنزل',
                        value: 1,
                        text: radioViewModel.groupValue == 1 ? text : '',
                        groupValue: radioViewModel.groupValue,
                        onChanged: radioViewModel.setGroupValue,
                        isSelected: radioViewModel.groupValue == 1,
                        onSelected: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapView(),
                            ),
                          );
                          text = 'شارع الملك سلمان ,523 عمارة 12';
                        },
                      ),
                      RadioButton(
                        label: 'خارج المنزل',
                        value: 2,
                        text: radioViewModel.groupValue == 2 ? text : '',
                        groupValue: radioViewModel.groupValue,
                        onChanged: radioViewModel.setGroupValue,
                        isSelected: radioViewModel.groupValue == 2,
                        onSelected: () {
                          onTextSubmitted() {}
                          ;
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => PlaceOrderBottomSheet(),
                          );
                        },
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
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: double.infinity,
                    child: Consumer<BabysitterRequestViewModel>(
                      builder: (context, viewModel, child) {
                        return LargeButton(
                          buttonColor: radioViewModel.isSelected
                              ? ColorsManager.primary
                              : ColorsManager.med_grey,
                          leftPadding: 10.w,
                          rightPadding: 10.w,
                          text: "إرسال طلب",
                          onPressed: () => radioViewModel.isSelected
                              ? showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) =>
                                      ConfirmOrderBottomSheetView())
                              : () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
