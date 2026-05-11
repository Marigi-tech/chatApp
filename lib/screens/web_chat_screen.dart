import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/widgets/all_chats_widget.dart';
import 'package:messenger_app/widgets/card_button_widget.dart';
import 'package:messenger_app/widgets/single_chat_widget.dart';

class WebChatScreen extends ConsumerWidget {
  final bool isGroupChat;
  const WebChatScreen({super.key, required this.isGroupChat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.9)),
              ),
              child: Text(
                isGroupChat ? 'Groups' : 'Chats',
                style: TextStyleProperty.descriptionStyle.copyWith(
                  fontSize: 20,

                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: CardButtonWidget(
                buttonTitle: isGroupChat ? 'Add group chat' : 'Add chat',
                
              ),
            ),
          ],
        ),

        SizedBox(height: 20),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //All chats
              Expanded(
                flex: 1,
                child: AllChatsWidget(isGroupChat: isGroupChat),
              ),
              //Single chat
              Expanded(
                flex: 6,
                child: SingleChatWidget(isGroupChat: isGroupChat),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
