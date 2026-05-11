import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/providers/current_chat_notifier.dart';
import 'package:messenger_app/widgets/action_card_widget.dart';
import 'package:messenger_app/widgets/chat_messages_list_widget.dart';
import 'package:messenger_app/widgets/single_chat_header_widget.dart';
import 'package:messenger_app/widgets/single_chat_keyboard_widget.dart';

class SingleChatWidget extends ConsumerWidget {
  final bool isGroupChat;
  const SingleChatWidget({super.key, required this.isGroupChat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentChat = ref.watch(currentChatProvider);
    return currentChat != null
        ? Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBar(
                  automaticallyImplyLeading: kIsWeb ? false : true,
                  elevation: 6.0,
                  title: SingleChatHeaderWidget(isGroupChat: isGroupChat),
                ),
                //Divider
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(thickness: 0.18, height: 10.0),
                ),
                SizedBox(height: 10.0),

                // Scrollable Chats Section
                Expanded(
                  flex: 6,
                  child: ChatMessagesListWidget(isGroupChat: isGroupChat),
                ),
                // Keyboard
                SingleChatKeyboardWidget(),
              ],
            ),
          )
        //todo: //2 cards 1) start a chat
        : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionCardWidget(
                  cardWidget: Text(
                    'Select a chat',
                    style: TextStyleProperty.descriptionStyle,
                  ),
                ),
                ActionCardWidget(
                  cardWidget: Text(
                    'View events',
                    style: TextStyleProperty.descriptionStyle,
                  ),
                ),
              ],
            ),
          );
  }
}
