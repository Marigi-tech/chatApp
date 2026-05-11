import 'package:messenger_app/data/enums/chat_type_enum.dart';
import 'package:messenger_app/data/lists/group_chat_members.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';

List<ChatMessage> grp1mesages = [
  ChatMessage(
    sender: chatMembers[0],
    receipients: chatMembers,
    chatMessage: 'Hello',
    chatTime: DateTime(2026, 3, 20),
    chatType: ChatType.group,
    chatId: 'grp001',
  ),
  ChatMessage(
    receipients: chatMembers,
    sender: chatMembers[1],
    chatMessage: 'We goood',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.group,
    chatId: 'grp001',
  ),
  ChatMessage(
    sender: chatMembers[2],
    receipients: chatMembers,
    chatMessage: ' ya\'ll have been super quiet recently',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.group,
    chatId: 'grp001',
  ),
  ChatMessage(
    receipients: chatMembers,
    sender: chatMembers[3],
    chatMessage: 'ikr =)',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp001',
  ),
];
List<ChatMessage> group2Messages = [
  ChatMessage(
    receipients: group1,
    sender: group1[0],
    chatMessage: 'Wadau,i have steaming hot tea',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp002',
  ),
  ChatMessage(
    receipients: group1,
    sender: group1[1],
    chatMessage: 'Spill already',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp002',
  ),
  ChatMessage(
    receipients: group1,
    sender: group1[1],
    chatMessage: 'Harakisha naniii !!!',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp002',
  ),
  ChatMessage(
    sender: group1[0],
    receipients: group1,
    chatMessage:
        'A very long text here to test responsiveness of the chat bubble widget, bare with me this is a very very extremely long and redudant paragraph, with no breaks just constant rumbling.',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp002',
  ),
];
List<ChatMessage> group3Messages = [
  ChatMessage(
    receipients: group2,
    sender: group2[0],
    chatMessage: 'Wadau,i have steaming hot tea',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp002',
  ),
  ChatMessage(
    receipients: group2,
    sender: group2[1],
    chatMessage: 'Dont care',
    chatTime: DateTime.now(),
    chatType: ChatType.group,
    chatId: 'grp002',
  ),
];
