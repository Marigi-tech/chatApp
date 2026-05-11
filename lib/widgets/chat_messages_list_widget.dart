import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';
import 'package:messenger_app/data/providers/chat_messages_provider.dart';
import 'package:messenger_app/properties/date_time_formatters_property.dart';
import 'package:messenger_app/widgets/chat_day_widget.dart';
import 'package:messenger_app/widgets/chat_message_bubble.dart';
import 'package:messenger_app/widgets/group_chat_message_bubble.dart';

class ChatMessagesListWidget extends ConsumerWidget {
  final bool isGroupChat;
  const ChatMessagesListWidget({super.key, required this.isGroupChat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatMessages = ref.watch(chatMessagesProvider);

    final String userId = '001';
    return ListView.separated(
      itemCount: chatMessages.length,

      separatorBuilder: (_, __) => const SizedBox(),
      itemBuilder: (context, index) {
        final ChatMessage message = chatMessages[index];

        final bool isSender = userId == message.sender.userId;
        final bool showDateHeader = _shouldShowDateHeader(chatMessages, index);

        return Column(
          mainAxisAlignment: isSender
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Sticky date thingy
            Visibility(
              visible: showDateHeader,
              child: ChatDayWidget(date: message.chatTime),
            ),

            //Actual chat bubble
            Align(
              alignment: isSender ? Alignment.topRight : Alignment.topLeft,
              child: isGroupChat
                  ? GroupChatMessageBubble(message: message, isSender: isSender)
                  : ChatMessageBubble(isSender: isSender, message: message),
            ),
          ],
        );
      },
    );
  }
}

/// ================= DATE HEADER LOGIC =================
bool _shouldShowDateHeader(List<ChatMessage> messages, int index) {
  if (index == 0) return true;

  final current = messages[index];
  final previous = messages[index - 1];

  return !isSameDay(current.chatTime, previous.chatTime);
}
