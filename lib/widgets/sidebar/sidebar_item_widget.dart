import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/notifiers/sidebar_notifiers.dart';
import 'package:messenger_app/widgets/sidebar/collapsed_side_item.dart';
import 'package:messenger_app/widgets/sidebar/uncollapsed_side_item.dart';

class SideBarItemWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onPressedCallBack;
  final int? index;
  final BoxDecoration? backgroundColor;
  final bool? isLogOutButton;
  final String? svgPath;

  const SideBarItemWidget({
    super.key,
    required this.title,
    this.icon,
    this.index,
    this.onPressedCallBack,
    this.backgroundColor,
    this.isLogOutButton,
    this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return isSidebarCollapsedNotifier.value == true
        ? CollapsedSideItem(
            title: title,
            icon: icon,
            svgPath: svgPath,
            isLogOutButton: isLogOutButton,
            onPressedCallBack: onPressedCallBack,
            index: index,
          )
        : UncollapsedSideItem(
            title: title,
            icon: icon,
            svgPath: svgPath,
            isLogOutButton: isLogOutButton,
            onPressedCallBack: onPressedCallBack,
            index: index,
          );
  }
}
