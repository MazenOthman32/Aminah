import 'package:amina/Models/day_order_model.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Buttons/round_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Talabaty/order_tracker_location.dart';
import 'package:amina/View/home/Talabaty/report_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../Resources/assets_resources.dart';
import '../../../Reusable_components/Cards/talabaty _card.dart';
import '../../../View_model/round_button_view_model.dart';
import 'comunication_button_sheet.dart';
import 'order_details_view.dart';
import 'rating_selection_view.dart';

class InfoView extends StatefulWidget {
  @override
  _InfoViewState createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'الطلبات الحالية'),
            Tab(text: 'الطلبات المنتهية'),
          ],
          labelStyle: TextStyle(fontFamily: FontResources.fontFamily),
          indicatorColor: ColorsManager.primary,
          labelColor: ColorsManager.black,
          unselectedLabelColor: ColorsManager.grey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CurrentSelectedScreen(),
          CompletedScreen(),
        ],
      ),
    );
  }
}

class CurrentSelectedScreen extends StatelessWidget {
  final DayOrderModel dayOrder = DayOrderModel(
      name: 'فرح يوسف',
      rating: 4.6,
      status: true,
      orderNumber: 22,
      orderType: "جليسة أطفال",
      timeFrom: 5.30,
      timeTo: 8.30,
      paymentStatus: "تم الدفع",
      paymentAmount: 500,
      imagePath: AssetsResource.User_Png);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
        child: Column(
          children: [
            Consumer<RoundButtonViewModel>(
              builder: (context, viewModel, child) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(viewModel.buttons.length, (index) {
                      final button = viewModel.buttons[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: RoundButton(
                          text: button.text,
                          isSelected: button.isSelected,
                          onPressed: () {
                            viewModel.selectIndex(index);
                          },
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
            SizedBox(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailsView(),
                      ));
                },
                child: Container(
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0.r),
                      side: BorderSide(
                        color: ColorsManager.med_grey,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(dayOrder.imagePath),
                                radius: 21.r,
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidget(
                                    text: dayOrder.name,
                                    color: ColorsManager.black,
                                    fontsize: 14.sp,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_rounded,
                                          color: ColorsManager.RateStarsColor,
                                          size: 21.r),
                                      TextWidget(
                                        text: '${dayOrder.rating}',
                                        color: ColorsManager.black,
                                        fontsize: 14.sp,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: dayOrder.status
                                      ? ColorsManager.backGroundColor
                                      : ColorsManager.Secondery,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: TextWidget(
                                    text: dayOrder.status
                                        ? "تم تأكيد الطلب"
                                        : "لم يتم تأكيد الطلب",
                                    color: dayOrder.status
                                        ? ColorsManager.primary
                                        : ColorsManager.white),
                              ),
                              IconButton(
                                onPressed: () {
                                  ReportBottomSheet(context);
                                },
                                icon: ImageIcon(
                                  AssetImage(AssetsResource.DotsPng),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AssetsResource.LayerSVG),
                              TextWidget(
                                text:
                                    'طلب #${dayOrder.orderNumber} - ${dayOrder.orderType}',
                                color: ColorsManager.black,
                                fontsize: 12.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              SvgPicture.asset(AssetsResource.CalenderSVG),
                              SizedBox(width: 5.w),
                              TextWidget(
                                text:
                                    '${dayOrder.timeFrom} - ${dayOrder.timeTo}',
                                color: ColorsManager.black,
                                fontsize: 12.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              SvgPicture.asset(AssetsResource.MoneySVG),
                              SizedBox(width: 5.w),
                              TextWidget(
                                text:
                                    '${dayOrder.paymentStatus} - ${dayOrder.paymentAmount.toString()} رس',
                                color: ColorsManager.black,
                                fontsize: 12.sp,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              SvgPicture.asset(AssetsResource.MapSVG),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OrderTrackerLocationView(),
                                      ));
                                },
                                child: TextWidget(
                                  text: 'تتبع على الخريطة',
                                  color: ColorsManager.black,
                                  fontsize: 14.sp,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 40.0.w),
                                child: VerticalDivider(),
                              ),
                              TextButton(
                                onPressed: () {
                                  communicationButtonSheet(context);
                                },
                                child: TextWidget(
                                  text: 'تواصل',
                                  color: ColorsManager.black,
                                  fontsize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              height: 210.h,
              width: double.infinity,
            ),
            SizedBox(
              height: 10.h,
            ),
            TalabatyCard(),
          ],
        ),
      ),
    );
  }
}

class CompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RatingSelectionView();
  }
}
