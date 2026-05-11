import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/lists/chats_list.dart';
import 'package:messenger_app/data/lists/group_chats.dart';
import 'package:messenger_app/data/models/chat_model.dart';
import 'package:messenger_app/data/models/chat_user_model.dart';
import 'package:messenger_app/data/providers/chat_messages_provider.dart';
import 'package:messenger_app/data/providers/current_chat_notifier.dart';
import 'package:messenger_app/screens/single_chat_screen.dart';
import 'package:messenger_app/widgets/chat_profile_image_widget.dart';

class AllChatsWidget extends ConsumerWidget {
  final bool isGroupChat;
  const AllChatsWidget({super.key, required this.isGroupChat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentChat = ref.watch(currentChatProvider);
    return ListView.separated(
      //todo: get user specific chats and messages
      itemCount: isGroupChat ? groupChats.length : chats.length,
      shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      separatorBuilder: (_, __) => const Divider(height: 12, thickness: 0.15),
      itemBuilder: (context, index) {
        final Chat chat = isGroupChat ? groupChats[index] : chats[index];

        final String userId = '001';

        // Get the first message to identify the participants
        final firstMessage = chat.chatMessages.first;

        // If I sent the message, the recipient is the 'receiver'
        // If I received it, the recipient is the 'sender'
        final ChatUser? receipient = firstMessage.sender.userId == userId
            ? firstMessage.receipient
            : firstMessage.sender;

        String? displayName;
        if (isGroupChat) {
          displayName = chat.groupName;
        } else {
          displayName = receipient?.userName ?? '';
        }
        return ListTile(
          //todo: display receipient's ppic
          leading: ChatProfileImageWidget(displayName: displayName ?? ''),
          title: Text(displayName ?? '', style: const TextStyle(fontSize: 14)),

          onTap: () {
            ref.read(currentChatProvider.notifier).setCurrentChat(chat);
            ref.invalidate(chatMessagesProvider);

            // ref.invalidate(currentChatProvider);

            //if mobile
            if (currentChat != null && !kIsWeb) {
              //if mobile
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SingleChatScreen(isGroupChat: isGroupChat),
                ),
              );
            }
          },
        );
      },
    );
  }
}
