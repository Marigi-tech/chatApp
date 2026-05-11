import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/widgets/all_chats_widget.dart';
import 'package:messenger_app/screens/web_chat_screen.dart';

class ChatsScreen extends ConsumerWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return kIsWeb
        ? WebChatScreen(isGroupChat: false)
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Text(
                    'Chats',
                    style: TextStyleProperty.titleStyle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),

              Expanded(flex: 3, child: AllChatsWidget(isGroupChat: false)),
            ],
          );
  }
}
