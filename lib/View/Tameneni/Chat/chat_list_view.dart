import 'package:amina/Models/chat_list_model.dart';
import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Tameneni/Chat/chat_view.dart';
import 'package:amina/View_model/chat_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListView extends StatelessWidget {
  final ChatListViewModel chatViewModel = ChatListViewModel();

  @override
  Widget build(BuildContext context) {
    List<ChatListModel> chats = chatViewModel.getChats();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        centerTitle: true,
        title: TextWidget(
          text: 'المحادثات',
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatView(),
                  ));
            },
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chats[index].avatarUrl),
                ),
                title: TextWidget(text: chats[index].name, color: Colors.black),
                subtitle: TextWidget(
                  text: chats[index].message,
                  color: chatViewModel.check(chats[index].time)
                      ? ColorsManager.primary
                      : Colors.black,
                ),
                trailing: chatViewModel.check(chats[index].time)
                    ? CircleAvatar(
                        backgroundColor: ColorsManager.primary,
                        radius: 10.r,
                        child: TextWidget(
                          text: chats[index].time.toString(),
                          color: ColorsManager.white,
                        ),
                      )
                    : Image.asset(AssetsResource.SeenPNG)),
          );
        },
      ),
    );
  }
}
