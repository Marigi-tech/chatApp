import 'package:messenger_app/commons/exports.dart';

class InputDecorationProperty {
  static InputDecoration textInputDecoration({
    String? hintText,
    Widget? suffix,
    Color? labelColor,
    Color? fillColor,
    Widget? prefixIcon,
    bool? isPassword,
    Widget? suffixIcon,
  }) => InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    fillColor: ColorConstants.primaryColor,
    hintStyle: TextStyleProperty.descriptionStyle.copyWith(
      fontSize: 14,
      letterSpacing: 1,
      fontStyle: FontStyle.normal,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: ColorConstants.kGrey3, width: 0.8),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: ColorConstants.greenColor, width: 1.0),
    ),

    hintText: hintText,
    suffix: suffix,
    suffixIcon: suffixIcon,
    // suffix: isPassword == true
    //     ? MouseRegion(
    //         cursor: SystemMouseCursors.click,
    //         child: GestureDetector(
    //           onTap: () {
    //             //TODO: Use Riverpod to change state
    //           },
    //           child: Icon(CupertinoIcons.eye, size: 13),
    //         ),
    //       )
    //     : suffixIcon ?? Text(''),
  );
}
