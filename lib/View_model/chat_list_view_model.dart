import 'package:amina/Models/chat_list_model.dart';

import '../resources/assets_resources.dart';

class ChatListViewModel {
  List<ChatListModel> getChats() {
    return [
      ChatListModel(
        name: 'فرح يوسف',
        message: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المسا...',
        time: 1,
        avatarUrl: AssetsResource.FarahPng,
      ),
      ChatListModel(
          name: 'فرح يوسف',
          message: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المسا...',
          time: 1,
          avatarUrl: AssetsResource.FarahPng),
      ChatListModel(
          name: 'فرح يوسف',
          message: 'عايزة أطمئن على طفلي',
          time: 0,
          avatarUrl: AssetsResource.FarahPng),
    ];
  }

  bool check(int time) {
    return time > 0;
  }
}
