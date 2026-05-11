import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';

import 'package:messenger_app/data/providers/current_chat_notifier.dart'
    show currentChatProvider;

final chatMessagesProvider = Provider<List<ChatMessage>>((ref) {
  final currentChat = ref.watch(currentChatProvider);

  return currentChat == null ? [] : currentChat.chatMessages;
});
