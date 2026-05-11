import 'package:messenger_app/data/enums/chat_type_enum.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';
import 'package:messenger_app/data/models/chat_user_model.dart';

List<ChatMessage> chatMessages = [
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'Hello',
    chatTime: DateTime(2026, 3, 20),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'I\'m fine thankyou',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'Kindly pay your rent in time',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'Noted thanks',
    chatTime: DateTime.now(),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'Noted thanks',
    chatTime: DateTime.now(),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'Noted thanks',
    chatTime: DateTime.now(),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage: 'Noted thanks',
    chatTime: DateTime.now(),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Luigi', userId: '002'),
    chatMessage:
        'A very long text here to test responsiveness of the chat bubble widget, bare with me this is a very very extremely long and redudant paragraph, with no breaks just constant rumbling.',
    chatTime: DateTime.now(),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
];
List<ChatMessage> chatMessages2 = [
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Sephile', userId: '002'),
    chatMessage: 'Hello',
    chatTime: DateTime(2026, 3, 20),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Sadio', userId: '002'),
    chatMessage: 'I\'m fine thankyou',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Mane', userId: '002'),
    chatMessage: 'Kindly pay your rent in time',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
];

List<ChatMessage> chatMessages3 = [
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Mandla', userId: '002'),
    chatMessage: 'Hello',
    chatTime: DateTime(2026, 3, 20),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Mario', userId: '001'),
    sender: ChatUser(userName: 'Mandla', userId: '002'),
    chatMessage: 'I\'m fine thankyou',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
];
List<ChatMessage> chatMessages4 = [
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'Sarafina', userId: '002'),
    chatMessage: 'Hello',
    chatTime: DateTime(2026, 3, 20),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'Sarafina', userId: '001'),
    sender: ChatUser(userName: 'Sadio', userId: '002'),
    chatMessage: 'I\'m fine thankyou',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
];
List<ChatMessage> chatMessages5 = [
  ChatMessage(
    sender: ChatUser(userName: 'Mario', userId: '001'),
    receipient: ChatUser(userName: 'AJ', userId: '002'),
    chatMessage: 'Hello',
    chatTime: DateTime(2026, 3, 20),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
  ChatMessage(
    receipient: ChatUser(userName: 'AJ', userId: '001'),
    sender: ChatUser(userName: 'Sadio', userId: '002'),
    chatMessage: 'I\'m fine thankyou',
    chatTime: DateTime(2026, 3, 21),
    chatType: ChatType.oneOnone,
    chatId: '',
  ),
];
