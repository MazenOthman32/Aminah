import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Order/BabySitter_Order/babysitter_request_form_view.dart';
import 'package:flutter/material.dart';

class OrderActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(thickness: 1.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BabysitterRequestForm(),
                      ));
                },
                icon: Icon(Icons.edit, color: Colors.black),
                label: TextWidget(
                  text: 'تعديل الطلب',
                  color: Colors.black,
                ),
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 20,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.cancel, color: Colors.red),
                label: TextWidget(text: 'إلغاء الطلب', color: Colors.red),
              ),
            ],
          ),
          Divider(thickness: 1.0),
        ],
      ),
    );
  }
}
