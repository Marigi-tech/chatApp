import 'package:flutter/material.dart';
import 'package:messenger_app/commons/colors.dart';

class ChatProfileImageWidget extends StatelessWidget {
  final String displayName;
  const ChatProfileImageWidget({super.key, required this.displayName});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: AvatarColorConstants.getColorFromLetter(displayName[0]),

      child: Text(
        displayName[0],
        style: const TextStyle(
          fontWeight: FontWeight.w200,
          color: ColorConstants.whiteColor,
        ),
      ),
    );
  }
}
