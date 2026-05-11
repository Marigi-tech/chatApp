import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/properties/text_style_property.dart';
import 'package:messenger_app/screens/web_chat_screen.dart';
import 'package:messenger_app/widgets/all_chats_widget.dart';

class GroupsScreen extends ConsumerWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return kIsWeb
        ? WebChatScreen(isGroupChat: true)
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

              Expanded(flex: 3, child: AllChatsWidget(isGroupChat: true)),
            ],
          );
  }
}
