import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/notifiers/sidebar_notifiers.dart';

class UncollapsedSideItem extends StatefulWidget {
  final String title;
  final VoidCallback? onPressedCallBack;
  final IconData? icon;
  final bool? isLogOutButton;
  final int? index;
  final String? svgPath;
  const UncollapsedSideItem({
    super.key,
    required this.title,
    this.onPressedCallBack,
    this.icon,
    this.isLogOutButton,
    this.index,
    this.svgPath,
  });

  @override
  State<UncollapsedSideItem> createState() => _UncollapsedSidebarItemState();
}

class _UncollapsedSidebarItemState extends State<UncollapsedSideItem> {
  late bool isSelected;
  late bool isHovered;
  @override
  void initState() {
    isSelected = _getIsSelected();
    isHovered = false;
    super.initState();
  }

  bool _getIsSelected() {
    return selectedSideItemNotifier.value == widget.index ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    isSelected = _getIsSelected();
    return ValueListenableBuilder(
      valueListenable: selectedSideItemNotifier,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: widget.onPressedCallBack,

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
                    ? BorderRadius.circular(05)
                    : BorderRadius.zero,
              ),

              // ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    widget.svgPath != null
                        ? SvgPicture.asset(
                            widget.svgPath!,
                            fit: BoxFit.contain,
                            height: 15,
                            width: 15,
                            color: ColorConstants.blueGreyColor,
                          )
                        : Icon(
                            widget.icon,
                            size: 18,
                            color: widget.isLogOutButton == true
                                ? ColorConstants.redColor
                                : isHovered || isSelected
                                ? ColorConstants.lightGreenColor
                                : ColorConstants.blueGreyColor,
                          ),
                    const SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        widget.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
