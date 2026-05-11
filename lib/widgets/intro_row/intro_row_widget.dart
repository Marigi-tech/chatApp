import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/widgets/intro_row/clock_widget.dart';
import 'package:messenger_app/widgets/intro_row/notifications.dart';
import 'package:messenger_app/widgets/intro_row/search_widget.dart';
import 'package:messenger_app/widgets/intro_row/settings_icon_widget.dart';
import 'package:messenger_app/widgets/intro_row/theme_toggle_widget.dart';

class IntroRowWidget extends StatelessWidget {
  const IntroRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.min,
      children: [
        // 1. Search Field
        SearchWidget(),
        // Time
        Visibility(
          visible: !Responsiveness.isMobile(context) ? true : false,
          child: ClockWidget(),
        ),
        // 2. Right-hand controls (AI Assistant + Icons)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              NotificationIconWidget(),
              const SizedBox(width: 6.0),
              // 2.3 Theme Icon widget
              ThemeToggleWidget(),
              const SizedBox(width: 6.0),
              SettingsIconWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
