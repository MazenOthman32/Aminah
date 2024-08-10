import 'package:amina/Models/chat_message_model.dart';
import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/chat_message_view_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../Resources/color_resources.dart';

class ChatView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(AssetsResource.FarahPng),
            ),
            Column(
              children: [
                TextWidget(text: 'فرح يوسف', color: Colors.black),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    SizedBox(width: 4.0),
                    TextWidget(
                      text: '4.6',
                      color: ColorsManager.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<ChatViewModel>(
              builder: (context, viewModel, child) {
                return ListView.builder(
                  itemCount: viewModel.messages.length,
                  itemBuilder: (context, index) {
                    ChatMessageModel message = viewModel.messages[index];
                    return ListTile(
                      leading: message.isSentByMe
                          ? null
                          : CircleAvatar(
                              child: SvgPicture.asset(AssetsResource.MaleSVG),
                            ),
                      title: Align(
                        alignment: message.isSentByMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.all(8.0.r),
                          decoration: BoxDecoration(
                            color: message.isSentByMe
                                ? ColorsManager.Secondery
                                : ColorsManager.med_grey.withOpacity(.4),
                            borderRadius: BorderRadius.circular(10.0.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(message.message),
                              if (index == viewModel.messages.length - 1 &&
                                  message.isSentByMe)
                                Lottie.asset(
                                  AssetsResource.InvalidLottie,
                                  width: 50.w,
                                  height: 50.h,
                                  fit: BoxFit.cover,
                                ),
                            ],
                          ),
                        ),
                      ),
                      trailing: message.isSentByMe
                          ? CircleAvatar(
                              child: SvgPicture.asset(AssetsResource.FemaleSVG),
                            )
                          : null,
                    );
                  },
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: ColorsManager.med_grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(8.r)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: ColorsManager.black,
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'إكتب رسالتك ..',
                      hintStyle:
                          TextStyle(fontFamily: FontResources.fontFamily),
                    ),
                  ),
                ),
                SizedBox(width: 8.0.w),
                GestureDetector(
                  onTap: () {
                    if (_controller.text.isNotEmpty) {
                      context
                          .read<ChatViewModel>()
                          .sendMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 10.h),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(5.0.r),
                        child: SvgPicture.asset(
                          AssetsResource.SendSVG,
                          width: 12.w,
                          height: 12.h,
                        ),
                      ),
                      width: 35.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: ColorsManager.primary,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
