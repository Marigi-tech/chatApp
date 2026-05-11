

import 'package:messenger_app/commons/exports.dart';


class AppGradient {
  //Green color
  static const BoxDecoration gradientGreen = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.greenColor,
        ColorConstants.darkGreenColor,
        ColorConstants.lightGreenColor,
      ],
    ),
  );
  //Yellow color
  static const BoxDecoration gradientYellow = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.yellowColor,
        ColorConstants.lightYellowColor,
        ColorConstants.darkYellowColor,
      ],
    ),
  );

  //Blue color
  static const BoxDecoration gradientBlue = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.blueColor,
        ColorConstants.lightBlueColor,
        ColorConstants.darkBlueColor,
      ],
    ),
  );
  //Light Green
  static const BoxDecoration gradientLightGreen = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.darkGreenColor,
        ColorConstants.lightGreenColor,
        ColorConstants.greenColor,
      ],
    ),
  );
  //Light Yellow
  static const BoxDecoration gradientLightYellow = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.lightYellowColor,
        ColorConstants.darkYellowColor,
        ColorConstants.yellowColor,
      ],
    ),
  );
  //Light Blue
  static const BoxDecoration gradientLightBlue = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.lightBlueColor,
        ColorConstants.darkBlueColor,
        ColorConstants.blueColor,
      ],
    ),
  );
  //Transparent
  static const BoxDecoration gradientTransparent = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.transparent],
    ),
  );
  //Red color

  static const BoxDecoration gradientRed = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.redColor,
        Color.fromARGB(255, 207, 19, 5),
        Color.fromARGB(255, 121, 27, 21),
      ],
    ),
  );
  //Light Red
  static const BoxDecoration gradientLightRed = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 207, 19, 5),
        ColorConstants.redColor,
        Color.fromARGB(255, 121, 27, 21),
      ],
    ),
  );
}
