import 'package:messenger_app/data/enums/chat_type_enum.dart';
import 'package:messenger_app/data/lists/group_chat_members.dart';
import 'package:messenger_app/data/lists/group_chat_messages.dart';
import 'package:messenger_app/data/models/chat_model.dart';

List<Chat> groupChats = [
  Chat(
    chatMessages: grp1mesages,
    chatId: 'grp001',
    lastUpdated: DateTime(2026, 3, 22, 17, 30),
    chatMembers: chatMembers,
    groupName: 'The Eternals',
    chatType: ChatType.group,
  ),
  Chat(
    chatMessages: group2Messages,
    chatId: 'grp002',
    lastUpdated: DateTime(2026, 4, 6, 17, 30),
    chatMembers: group1,
    groupName: 'Chama',
    chatType: ChatType.group,
  ),
  Chat(
    chatMessages: group3Messages,
    chatId: 'grp003',
    lastUpdated: DateTime(2026, 4, 5, 17, 30),
    chatMembers: group2,
    groupName: 'Mafanikio',
    chatType: ChatType.group,
  ),
];
