import 'package:bubble/bubble.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/enums/chat_type_enum.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';
import 'package:messenger_app/properties/chat_bubble_style_property.dart';
import 'package:messenger_app/properties/date_time_formatters_property.dart';

class ChatMessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isSender;

  const ChatMessageBubble({
    super.key,
    required this.message,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    final sender = message.sender;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: Responsiveness.isMobile(context)
            ? getSizeFromContext(context).width * .7
            : getSizeFromContext(context).width * 0.4,
      ),
      child: Bubble(
        style: isSender ? styleSender : styleReceiver,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: isSender
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (message.chatType == ChatType.group && !isSender)
                Text(
                  sender.userName,
                  style: TextStyleProperty.extraDescriptionStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    color: AvatarColorConstants.getColorFromLetter(
                      sender.userName[0],
                    ),
                  ),
                ),

              message.chatType == ChatType.group && !isSender
                  ? ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: Responsiveness.isMobile(context)
                            ? getSizeFromContext(context).width * .5
                            : getSizeFromContext(context).width * 0.2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:
                                      AvatarColorConstants.getColorFromLetter(
                                        sender.userName[0],
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    )
                  : SizedBox(height: 2),

              /// MESSAGE TEXT
              Text(
                message.chatMessage,
                textAlign: isSender ? TextAlign.right : TextAlign.left,
                style: TextStyleProperty.descriptionStyle.copyWith(
                  color: isSender
                      ? ColorConstants.blackColor
                      : ColorConstants.blueGreyColor,
                ),
              ),

              const SizedBox(height: 6),

              /// TIME
              // Row(
              //   mainAxisSize: MainAxisSize.min,
              //   // mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      formatJustTheTime(message.chatTime),
                      textAlign: TextAlign.right,
                      style: TextStyleProperty.extraDescriptionStyle.copyWith(
                        color: isSender
                            ? ColorConstants.blackColor
                            : ColorConstants.blueGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
