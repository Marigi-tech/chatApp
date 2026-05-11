import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:messenger_app/data/notifiers/sidebar_notifiers.dart';
import 'package:messenger_app/widgets/sidebar/side_bar_items.dart';

class SidebarWidget extends ConsumerWidget {
  final List<dynamic> pages;

  const SidebarWidget({super.key, required this.pages});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ValueListenableBuilder<bool>(
      valueListenable: isSidebarCollapsedNotifier,
      builder: (context, isCollapsed, child) {
        // --- CONTAINER SETUP ---
        return Card(
          elevation: 6.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          margin: EdgeInsets.zero,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // --- TOGGLE BUTTON ROW ---
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      isSidebarCollapsedNotifier.value = !isCollapsed;
                    },
                    icon: Icon(
                      isCollapsed
                          ? Icons.expand_more_rounded
                          : CupertinoIcons.minus_circled,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20.0),
              const Divider(thickness: 2.0),
              const SizedBox(height: 20.0),
              // Dashboard page  links
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 180),

                    child: ListView(
                      children: [
                        ChatsItem(),
                        GroupsItem(),
                        EventsItem(),
                        SettingsItem(),
                        ProfileItem(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              LogoutItem(),
            ],
          ),
        );
      },
    );
  }
}
