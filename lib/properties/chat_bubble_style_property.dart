import 'package:bubble/bubble.dart';
import 'package:messenger_app/commons/exports.dart';

const styleReceiver = BubbleStyle(
      nip: BubbleNip.leftCenter,
      color: Colors.white,
      elevation: 4,
      margin: BubbleEdges.only(top: 8, right: 50),
      alignment: Alignment.topLeft,
    );

    const styleSender = BubbleStyle(
      nip: BubbleNip.rightCenter,
      color: ColorConstants.greenColor,
      elevation: 4,
      margin: BubbleEdges.only(top: 8, left: 50),
      alignment: Alignment.topRight,
    );