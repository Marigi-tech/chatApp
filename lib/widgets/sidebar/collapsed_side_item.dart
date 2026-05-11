import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/notifiers/sidebar_notifiers.dart';

class CollapsedSideItem extends StatefulWidget {
  final String title;
  final VoidCallback? onPressedCallBack;
  final IconData? icon;
  final String? svgPath;
  final bool? isLogOutButton;
  final int? index;
  const CollapsedSideItem({
    super.key,
    required this.title,
    this.onPressedCallBack,
    this.icon,
    this.isLogOutButton,
    this.index,
    this.svgPath,
  });

  @override
  State<CollapsedSideItem> createState() => _CollapsedSideItemState();
}

class _CollapsedSideItemState extends State<CollapsedSideItem> {
  late bool isHovered;
  late bool isSelected;

  @override
  void initState() {
    isHovered = false;
    isSelected = _getIsSelected();
    super.initState();
  }

  bool _getIsSelected() {
    return selectedSideItemNotifier.value == widget.index ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    isSelected = _getIsSelected();
    return Tooltip(
      message: widget.title, // 👈 Tooltip text
      waitDuration: const Duration(milliseconds: 300),
      verticalOffset: -45,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 48, 48).withValues(alpha: 0.75),
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(
        color: ColorConstants.whiteColor,
        fontSize: 12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 06.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: GestureDetector(
            onTap: widget.onPressedCallBack,
            child: Card(
              elevation: isHovered || isSelected ? 6.0 : 0,
              shape: RoundedRectangleBorder(
                side: isHovered || isSelected
                    ? BorderSide(
                        color: ColorConstants.blueGreyColor,
                        width: 0.09,
                      )
                    : BorderSide.none,
                borderRadius: isHovered || isSelected
                    ? BorderRadius.circular(08)
                    : BorderRadius.zero,
              ),

              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: widget.svgPath != null
                    ? SvgPicture.asset(
                        widget.svgPath!,
                        fit: BoxFit.contain,
                        height: 15,
                        width: 15,
                        color: widget.isLogOutButton == true
                            ? ColorConstants.redColor
                            : isSelected || isHovered
                            ? ColorConstants.greenColor
                            : ColorConstants.blueGreyColor,
                      )
                    : Icon(
                        widget.icon,
                        size: 18,
                        color: widget.isLogOutButton == true
                            ? ColorConstants.redColor
                            : isSelected || isHovered
                            ? ColorConstants.greenColor
                            : ColorConstants.blueGreyColor,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
