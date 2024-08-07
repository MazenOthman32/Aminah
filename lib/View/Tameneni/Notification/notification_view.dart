import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/notification_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationListView extends StatefulWidget {
  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NotificationViewModel()..fetchNotifications(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextWidget(
            text: 'الإشعارات',
            color: Colors.black,
          ),
        ),
        body: Consumer<NotificationViewModel>(
          builder: (context, viewModel, child) {
            return ListView.builder(
              itemCount: viewModel.notifications.length,
              itemBuilder: (context, index) {
                final notification = viewModel.notifications[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetsResource.User_Png),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        maxLines: 2,
                        text: notification.title,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: notification.time,
                        color: ColorsManager.grey,
                      )
                    ],
                  ),
                  subtitle: Text(notification.message),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
