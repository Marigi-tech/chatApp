import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/commons/icons.dart';
import 'package:messenger_app/data/providers/current_chat_notifier.dart';
import 'package:messenger_app/data/providers/page_selector_notifier.dart';

class MobileBottomNavWidget extends ConsumerStatefulWidget {
  const MobileBottomNavWidget({super.key});

  @override
  ConsumerState<MobileBottomNavWidget> createState() =>
      _MobileBottomNavWidgetState();
}

class _MobileBottomNavWidgetState extends ConsumerState<MobileBottomNavWidget> {
  @override
  Widget build(BuildContext context) {
    final currentPageIndex = ref.watch(pageSelectorProvider);
    return NavigationBar(
      onDestinationSelected: (int index) {
        ref.read(pageSelectorProvider.notifier).setPageIndex(index);
        ref.invalidate(currentChatProvider);
      },
      indicatorColor: ColorConstants.greenColor,
      selectedIndex: currentPageIndex,
      destinations: <Widget>[
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AppSocialIconConstant.homeIconPath,
            width: 13,
            height: 13,
          ),
          icon: SvgPicture.asset(
            AppSocialIconConstant.homeIconPath,
            width: 13,
            height: 13,
          ),
          label: 'Feed',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AppSocialIconConstant.chatIconPath,
            width: 13,
            height: 13,
          ),
          icon: SvgPicture.asset(
            AppSocialIconConstant.chatIconPath,
            width: 13,
            height: 13,
          ),
          label: 'chats',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AppSocialIconConstant.emailIconPath,
            width: 13,
            height: 13,
          ),
          icon: SvgPicture.asset(
            AppSocialIconConstant.emailIconPath,
            width: 13,
            height: 13,
          ),

          label: 'groups',
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AppSocialIconConstant.profileIconPath,
            width: 13,
            height: 13,
          ),
          icon: SvgPicture.asset(
            AppSocialIconConstant.profileIconPath,
            width: 13,
            height: 13,
          ),
          label: 'profile',
        ),
      ],
    );
  }
}
