import 'package:messenger_app/commons/exports.dart';

class ColorButtonWidget extends StatefulWidget {
  final VoidCallback onPressedCallBack;
  final String buttonTitle;
  final Color buttonColor;
  final double? fontSize;

  const ColorButtonWidget({
    super.key,
    required this.onPressedCallBack,
    required this.buttonTitle,
    required this.buttonColor,
    this.fontSize,
  });

  @override
  State<ColorButtonWidget> createState() => _ColorButtonWidgetState();
}

class _ColorButtonWidgetState extends State<ColorButtonWidget> {
  late BoxDecoration backgroundColor;

  @override
  void initState() {
    super.initState();
    backgroundColor = _getNormalGradient();
  }

  BoxDecoration _getNormalGradient() {
    return widget.buttonColor == ColorConstants.yellowColor
        ? AppGradient.gradientYellow
        : widget.buttonColor == ColorConstants.blueColor
        ? AppGradient.gradientBlue
        : AppGradient.gradientGreen;
  }

  BoxDecoration _getHoverGradient() {
    return widget.buttonColor == ColorConstants.yellowColor
        ? AppGradient.gradientLightYellow
        : widget.buttonColor == ColorConstants.blueColor
        ? AppGradient.gradientLightBlue
        : AppGradient.gradientLightGreen;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() {
          backgroundColor = _getHoverGradient();
        });
      },
      onExit: (event) {
        setState(() {
          backgroundColor = _getNormalGradient();
        });
      },
      child: GestureDetector(
        onTap: widget.onPressedCallBack,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 180),
          decoration: BoxDecoration(
            gradient: backgroundColor.gradient,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            widget.buttonTitle,
            style: TextStyle(
              color: ColorConstants.whiteColor,
              fontSize: widget.fontSize ?? 15,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
