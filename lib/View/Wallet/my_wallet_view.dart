import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Wallet/add_to_balance_view.dart';
import 'package:amina/View/Wallet/date_range_bottom_sheet.dart';
import 'package:amina/View/Wallet/credit_cards_view.dart';
import 'package:amina/View_model/transactions_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'transactions.dart';

class WalletView extends StatefulWidget {
  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      switch (_tabController.index) {
        case 0:
          Provider.of<TransactionViewModel>(context, listen: false)
              .selectType("الجميع");
          break;
        case 1:
          Provider.of<TransactionViewModel>(context, listen: false)
              .selectType("صادرات");
          break;
        case 2:
          Provider.of<TransactionViewModel>(context, listen: false)
              .selectType("واردات");
          break;
      }
    });
  }

  void _showDateRangeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return DateRangeBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFf1fafb)),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 8),
                TextWidget(
                  text: 'المبلغ المتاح',
                  color: Colors.black,
                ),
                TextWidget(
                  text: '3,750 ر.س',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontsize: 30.sp,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddToBalanceView(),
                                ));
                          },
                          style: ButtonStyle(
                            iconColor: MaterialStatePropertyAll(Colors.black),
                          ),
                        ),
                        TextWidget(
                          text: 'رصيد',
                          color: Colors.black,
                          fontsize: 12.sp,
                        ),
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.credit_card),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CreditCardsView(),
                                ));
                          },
                          style: ButtonStyle(
                            iconColor: MaterialStatePropertyAll(Colors.black),
                          ),
                        ),
                        TextWidget(
                          text: 'الكروت',
                          color: Colors.black,
                          fontsize: 12.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFf1fafb),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.r),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          TabBar(
            isScrollable: true,
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: ColorsManager.primary,
            labelStyle: TextStyle(
              fontFamily: FontResources.fontFamily,
              fontSize: 14.sp,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: FontResources.fontFamily,
              fontSize: 14.sp,
            ),
            tabs: [
              Tab(text: 'الجميع'),
              Tab(text: 'الصادرات'),
              Tab(text: 'الواردات'),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'المعاملات الآخيرة',
                  color: Colors.black,
                ),
                ElevatedButton(
                  onPressed: () => _showDateRangeBottomSheet(context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextWidget(
                        text: 'آخر أسبوع',
                        color: Colors.black,
                        fontsize: 12.sp,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.r), // Rounded edges
                    ),
                    elevation: 0,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                TransactionList(),
                TransactionList(),
                TransactionList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
