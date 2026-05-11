import 'package:messenger_app/commons/exports.dart';

class TextStyleProperty {
   static const TextStyle titleStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.8,
    fontFamily: 'Lato',
  );
  static const TextStyle descriptionStyle = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
        fontFamily: 'Lato',
        
  );
  static const TextStyle extraDescriptionStyle = TextStyle(
    fontSize: 11,
    fontStyle: FontStyle.italic,
        fontFamily: 'Lato',
  );
  static const TextStyle introTitleStyle = TextStyle(
    fontSize: 62,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.0,
    fontFamily: 'Montserrat',
    color: ColorConstants.whiteColor,
  );

}
