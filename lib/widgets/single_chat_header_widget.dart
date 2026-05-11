import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/models/chat_user_model.dart';
import 'package:messenger_app/data/providers/chat_messages_provider.dart';
import 'package:messenger_app/data/providers/current_chat_notifier.dart';
import 'package:messenger_app/properties/date_time_formatters_property.dart';
import 'package:messenger_app/widgets/chat_profile_image_widget.dart';

class SingleChatHeaderWidget extends ConsumerWidget {
  final bool isGroupChat;
  const SingleChatHeaderWidget({super.key, required this.isGroupChat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentChat = ref.watch(currentChatProvider);
    final chatMessages = ref.watch(chatMessagesProvider);
    //todo: use current chat provider for all this information
    final String userId = '001';
    final firstMessage = chatMessages.first;
    final ChatUser? receipient = firstMessage.sender.userId == userId
        ? firstMessage.receipient
        : firstMessage.sender;
    String? displayName;
    int? noOfMembers;
    if (isGroupChat) {
      displayName = currentChat?.groupName;
      noOfMembers = currentChat?.chatMembers?.length;
    } else {
      displayName = receipient?.userName ?? '';
    }
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChatProfileImageWidget(displayName: displayName ?? ''),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                displayName ?? '',
                style: TextStyleProperty.descriptionStyle.copyWith(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 3),
              //todo: check RECEIPIENT'S LAST SEEN
              Text(
                isGroupChat
                    ? '$noOfMembers members'
                    : 'Last seen at ${formatPrettyDate(DateTime.now()) == formatPrettyDate(currentChat!.lastUpdated) ? formatJustTheTime(currentChat.lastUpdated) : formatPrettyDate(currentChat.lastUpdated)}',
                style: TextStyleProperty.extraDescriptionStyle,
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          //todo: video call
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Icon(CupertinoIcons.videocam, size: 25.0),
          ),
          SizedBox(width: 15),
          //todo: phone call
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Icon(Icons.phone, size: 25.0),
          ),
        ],
      ),
    );
  }
}
