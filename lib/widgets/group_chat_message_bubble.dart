import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/models/chat_messages_model.dart';
import 'package:messenger_app/widgets/chat_message_bubble.dart';
import 'package:messenger_app/widgets/chat_profile_image_widget.dart';

class GroupChatMessageBubble extends ConsumerStatefulWidget {
  final ChatMessage message;
  final bool isSender;
  const GroupChatMessageBubble({
    super.key,
    required this.message,
    required this.isSender,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GroupChatMessageBubbleState();
}

class _GroupChatMessageBubbleState
    extends ConsumerState<GroupChatMessageBubble> {
  @override
  Widget build(BuildContext context) {
    final sender = widget.message.sender;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!widget.isSender) // Display other memmbers' profile photo
          Padding(
            padding: EdgeInsets.only(right: 20, top: 30),
            child: ChatProfileImageWidget(displayName: sender.userName[0]),
          ),
        Expanded(
          child: ChatMessageBubble(
            message: widget.message,
            isSender: widget.isSender,
          ),
        ),
      ],
    );
  }
}

// class GroupChatMessageBubble extends StatefulWidget {
//   final ChatMessage message;
//   final bool isSender;

//   const GroupChatMessageBubble({
//     super.key,
//     required this.message,
//     required this.isSender,
//   });

//   @override
//   State<GroupChatMessageBubble> createState() => _GroupChatMessageBubbleState();
// }

// class _GroupChatMessageBubbleState extends State<GroupChatMessageBubble> {
//   @override
//   Widget build(BuildContext context) {
//     final sender = widget.message.sender;

//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       // mainAxisAlignment: widget.isSender
//       //     ? MainAxisAlignment.end
//       //     : MainAxisAlignment.start,
//       children: [
//         if (!widget.isSender) //this is a receiver
//           Padding(
//             padding: EdgeInsets.only(right: 20, top: 30),
//             child: ChatProfileImageWidget(displayName: sender.userName[0]),
//           ),

//         /// 💬 MESSAGE BUBBLE
//         ConstrainedBox(
//           constraints: BoxConstraints(
//             maxWidth: Responsiveness.isMobile(context)
//                 ? getSizeFromContext(context).height * .7
//                 : getSizeFromContext(context).width * 0.4,
//           ),

//           // constraints: BoxConstraints(
//           child: Bubble(
//             style: widget.isSender ? styleSender : styleReceiver,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
//               child: Column(
//                 crossAxisAlignment: widget.isSender
//                     ? CrossAxisAlignment.end
//                     : CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   /// 👤 NAME (only for received group messages)
//                   if (!widget.isSender)
//                     Text(
//                       sender.userName,
//                       style: TextStyleProperty.extraDescriptionStyle.copyWith(
//                         fontWeight: FontWeight.bold,
//                         color: AvatarColorConstants.getColorFromLetter(
//                           sender.userName[0],
//                         ),
//                       ),
//                     ),

//                   !widget.isSender
//                       ? Divider(thickness: 0.2)
//                       : SizedBox(height: 2),

//                   /// 📝 MESSAGE TEXT
//                   Text(
//                     widget.message.chatMessage,
//                     textAlign: widget.isSender
//                         ? TextAlign.right
//                         : TextAlign.left,
//                     style: TextStyleProperty.descriptionStyle.copyWith(
//                       color: widget.isSender
//                           ? ColorConstants.blackColor
//                           : ColorConstants.blueGreyColor,
//                     ),
//                   ),

//                   const SizedBox(height: 4),

//                   /// ⏰ TIME
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Text(
//                         formatJustTheTime(widget.message.chatTime),
//                         style: TextStyleProperty.extraDescriptionStyle.copyWith(
//                           color: widget.isSender
//                               ? ColorConstants.blackColor
//                               : ColorConstants.blueGreyColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
