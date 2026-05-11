import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/commons/icons.dart';
import 'package:messenger_app/data/notifiers/sidebar_notifiers.dart';
import 'package:messenger_app/data/providers/page_selector_notifier.dart';
import 'package:messenger_app/screens/home_screen.dart';
import 'package:messenger_app/widgets/sidebar/sidebar_item_widget.dart';

//Chats
class ChatsItem extends ConsumerWidget {
  const ChatsItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarItemWidget(
      title: 'Chats',
      svgPath: AppSocialIconConstant.chatIconPath,
      index: 0,
      onPressedCallBack: () {
        ref.read(pageSelectorProvider.notifier).setPageIndex(0);
        selectedSideItemNotifier.value = 0;
      },
    );
  }
}

//Groups
class GroupsItem extends ConsumerWidget {
  const GroupsItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarItemWidget(
      title: 'Groups',
      icon: CupertinoIcons.person_3,
      index: 1,
      onPressedCallBack: (() {
        ref.read(pageSelectorProvider.notifier).setPageIndex(1);
        selectedSideItemNotifier.value = 1;
      }),
    );
  }
}

//Events
class EventsItem extends ConsumerWidget {
  const EventsItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarItemWidget(
      title: 'Events',
      icon: CupertinoIcons.calendar,
      index: 2,
      onPressedCallBack: (() {
        ref.read(pageSelectorProvider.notifier).setPageIndex(2);
        selectedSideItemNotifier.value = 2;
      }),
    );
  }
}

//Settings
class SettingsItem extends ConsumerWidget {
  const SettingsItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarItemWidget(
      title: 'Settings',
      icon: CupertinoIcons.gear,
      index: 3,
      onPressedCallBack: (() {
        ref.read(pageSelectorProvider.notifier).setPageIndex(3);
        selectedSideItemNotifier.value = 3;
      }),
    );
  }
}

//Profile
class ProfileItem extends ConsumerWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarItemWidget(
      title: 'Profile',
      svgPath: AppSocialIconConstant.profileIconPath,

      index: 4,
      onPressedCallBack: (() {
        ref.read(pageSelectorProvider.notifier).setPageIndex(4);
        selectedSideItemNotifier.value = 4;
      }),
    );
  }
}

//Logout
class LogoutItem extends ConsumerWidget {
  const LogoutItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SideBarItemWidget(
      title: 'Sign Out',
      icon: CupertinoIcons.power,
      isLogOutButton: true,

      onPressedCallBack: () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => HomeScreen())),
    );
  }
}
