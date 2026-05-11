import 'package:messenger_app/data/enums/chat_type_enum.dart';
import 'package:messenger_app/data/models/chat_user_model.dart';

class ChatMessage {
  final ChatUser sender;
  final ChatUser? receipient;
  final ChatType chatType;
  final String chatMessage;
  final DateTime chatTime;
  final String chatId;
  final List<ChatUser>? receipients;

  ChatMessage({
    required this.sender,
    this.receipient,
    required this.chatType,
    required this.chatMessage,
    required this.chatTime,
    required this.chatId,
    this.receipients,
  });
}
