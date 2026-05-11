import 'package:messenger_app/data/enums/chat_type_enum.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';
import 'package:messenger_app/data/models/chat_user_model.dart';

class Chat {
  final String chatId;
  final List<ChatMessage> chatMessages;
  final DateTime lastUpdated;
  final ChatType chatType;
  final List<ChatUser>? chatMembers;
  final String? groupName;

  Chat({
    required this.chatMessages,
    required this.chatId,
    required this.lastUpdated,
    required this.chatType,
    this.chatMembers,
    this.groupName,
  });
}
