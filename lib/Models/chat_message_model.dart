class ChatMessageModel {
  final String message;
  final bool isSentByMe;
  final DateTime timestamp;

  ChatMessageModel({
    required this.message,
    required this.isSentByMe,
    required this.timestamp,
  });
}
