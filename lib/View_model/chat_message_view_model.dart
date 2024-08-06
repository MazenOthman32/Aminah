import 'package:amina/Models/chat_message_model.dart';
import 'package:flutter/material.dart';

class ChatViewModel extends ChangeNotifier {
  List<ChatMessageModel> _messages = [];

  List<ChatMessageModel> get messages => _messages;

  void sendMessage(String message) {
    _messages.add(ChatMessageModel(
      message: message,
      isSentByMe: true,
      timestamp: DateTime.now(),
    ));

    Future.delayed(Duration(seconds: 1), () {
      _messages.add(ChatMessageModel(
        message: "Response to: $message",
        isSentByMe: false,
        timestamp: DateTime.now(),
      ));
      notifyListeners();
    });
    notifyListeners();
  }
}
