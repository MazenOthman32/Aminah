import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/transactions_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var transactions = Provider.of<TransactionViewModel>(context).transactions;
    var dateFormat = DateFormat('yyyy-MM-dd');
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        var tx = transactions[index];
        return ListTile(
          leading: Container(
            height: 35.h,
            width: 35.w,
            decoration: BoxDecoration(
              color: ColorsManager.med_grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: tx.type == "صادرات"
                ? Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(AssetsResource.DownArrowSVG),
                  )
                : Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(AssetsResource.UpArrowSVG),
                  ),
          ),
          title: TextWidget(
            text: '${tx.amount} ر.س',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle: Text(dateFormat.format(tx.dateTime)), // Format the date
        );
      },
    );
  }
}
