import 'package:flutter/material.dart';
import '../Models/chat_message_model.dart';

class ChatViewModel extends ChangeNotifier {
  List<ChatMessageModel> _messages = [];

  List<ChatMessageModel> get messages => _messages;

  void sendMessage(String message) {
    _messages.add(ChatMessageModel(
        message: message, isSentByMe: true, timestamp: DateTime.now()));
    // Simulate a response from the other side
    Future.delayed(Duration(seconds: 1), () {
      _messages.add(ChatMessageModel(
          message: message, isSentByMe: false, timestamp: DateTime.now()));
      notifyListeners();
    });
    notifyListeners();
  }
}
