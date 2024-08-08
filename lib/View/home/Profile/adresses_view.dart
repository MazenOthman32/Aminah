import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/text_field_button_sheet.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Wallet/delete_bottom_sheet.dart';
import 'package:amina/View/home/Map_view.dart';
import 'package:amina/resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdressesView extends StatelessWidget {
  const AdressesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: "العناوين",
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
            child: Container(
              width: double.infinity,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: ColorsManager.grey)),
                title: TextWidget(
                  text: 'منزل',
                  color: ColorsManager.grey,
                  fontsize: 12.sp,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapView(),
                            ));
                      },
                      icon: ImageIcon(
                        AssetImage(AssetsResource.EditPNG),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => DeleteBottomSheet(
                              message: "هل أنت متأكد من حذف هذا العنوان ؟",
                              redButtonText: "نعم, إلغي",
                              whiteButtonText: "لا, رجوع"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0)),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      icon: ImageIcon(
                        color: Colors.red,
                        AssetImage(AssetsResource.TrashPNG),
                      ),
                    ),
                  ],
                ),
                subtitle: TextWidget(
                  text: 'شارع الملك سلمان ,523 عمارة 12',
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
            child: Container(
              width: double.infinity,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: ColorsManager.grey)),
                title: TextWidget(
                  text: 'منزل',
                  color: ColorsManager.grey,
                  fontsize: 12.sp,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapView(),
                            ));
                      },
                      icon: ImageIcon(
                        AssetImage(AssetsResource.EditPNG),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => DeleteBottomSheet(
                              message: "هل أنت متأكد من حذف هذا العنوان ؟",
                              redButtonText: "نعم, إلغي",
                              whiteButtonText: "لا, رجوع"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0)),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      icon: ImageIcon(
                        color: Colors.red,
                        AssetImage(AssetsResource.TrashPNG),
                      ),
                    ),
                  ],
                ),
                subtitle: TextWidget(
                  text: 'شارع الملك سلمان ,523 عمارة 12',
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
            child: Container(
              width: double.infinity,
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: ColorsManager.grey)),
                title: TextWidget(
                  text: 'منزل',
                  color: ColorsManager.grey,
                  fontsize: 12.sp,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapView(),
                            ));
                      },
                      icon: ImageIcon(
                        AssetImage(AssetsResource.EditPNG),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => DeleteBottomSheet(
                              message: "هل أنت متأكد من حذف هذا العنوان ؟",
                              redButtonText: "نعم, إلغي",
                              whiteButtonText: "لا, رجوع"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0)),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      icon: ImageIcon(
                        color: Colors.red,
                        AssetImage(AssetsResource.TrashPNG),
                      ),
                    ),
                  ],
                ),
                subtitle: TextWidget(
                  text: 'شارع الملك سلمان ,523 عمارة 12',
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                fontSize: 16.sp,
                text: '+   إضافة عنوان جديد',
                fontColor: Colors.black,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => TextFieldBottomSheet(
                          buttonMessage: 'حفظ',
                          message: "من فضلك إكتب إسم المكان",
                          hintText: "إسم المكان"));
                },
                buttonColor: ColorsManager.med_grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
