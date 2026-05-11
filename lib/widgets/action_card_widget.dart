import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/colors.dart';

class ActionCardWidget extends ConsumerStatefulWidget {
  final Widget cardWidget;
  const ActionCardWidget({super.key, required this.cardWidget});

  @override
  ConsumerState<ActionCardWidget> createState() => _ActionCardWidgetState();
}

class _ActionCardWidgetState extends ConsumerState<ActionCardWidget> {
  double? elevation;
  Color? cardColor;
  @override
  void initState() {
    super.initState();
    elevation = 6;
    cardColor = null;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() {
          elevation = 8;
          cardColor = ColorConstants.darkGreenColor;
        });
      },
      onExit: (event) {
        setState(() {
          elevation = 6;
          cardColor = null;
        });
      },
      child: Card(
        elevation: elevation,
        color: cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: widget.cardWidget,
        ),
      ),
    );
  }
}
