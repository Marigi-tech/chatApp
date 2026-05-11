

import 'exports.dart';

class ColorConstants {
  static const Color greenColor = Color.fromARGB(255, 69, 250, 78);
  static const Color lightGreenColor = Color.fromARGB(255, 4, 175, 13);
  static const Color darkGreenColor = Color.fromARGB(255, 7, 133, 9);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color yellowColor = Colors.yellowAccent;
  static const Color lightYellowColor = Colors.yellow;
  static const Color darkYellowColor = Color.fromARGB(255, 249, 168, 37);
  static const Color blueColor = Colors.blue;
  static const Color lightBlueColor = Colors.lightBlue;
  static const Color darkBlueColor = Color.fromARGB(255, 13, 71, 161);
  static const Color blueGreyColor = Colors.blueGrey;
  static const Color darkNavColor = Color.fromARGB(255, 51, 48, 48);
  static const Color lightNavColor = Color.fromARGB(255, 238, 239, 240);
  static const Color redColor = Colors.red;
  static const Color darkRedColor = Color.fromARGB(255, 133, 14, 6);
  static const Color primaryColor  = Color.fromRGBO(227, 237, 247, 1);
   static const Color kGrey3 = Color.fromRGBO(158, 158, 158, 1);
  static const Color transparentColor = Colors.transparent;

  }
  //assign color to letter
class AvatarColorConstants {
static final List<Color> _avatarColors = [
    ColorConstants.darkYellowColor,
    ColorConstants.redColor,
    ColorConstants.darkBlueColor,
    ColorConstants.darkGreenColor,
    ColorConstants.blueGreyColor,
    ColorConstants.lightBlueColor,
    ColorConstants.lightGreenColor,
    ColorConstants.darkRedColor,
  ];

 static Color getColorFromLetter(String letter) {
  if (letter.isEmpty) return _avatarColors[0];

  final String upper = letter.toUpperCase();

  int hash = 0;
  for (int i = 0; i < upper.length; i++) {
    hash = upper.codeUnitAt(i) + ((hash << 5) - hash);
  }

  final index = hash.abs() % _avatarColors.length;
  return _avatarColors[index];
}
}