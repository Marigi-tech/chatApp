import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/lists/pages_list.dart';
import 'package:messenger_app/data/providers/page_selector_notifier.dart';
import 'package:messenger_app/screens/desktop_dashboard_screen.dart';
import 'package:messenger_app/widgets/mobile_bottom_nav_widget.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsiveness.isMobile(context);
    final currentPageIndex = ref.watch(pageSelectorProvider);
    return isMobile
        ? AppBodyWidget(
            pageBody: pages.elementAt(currentPageIndex),
            hasNoBackButton: true,
            navBar: MobileBottomNavWidget(),
          )
        : DesktopDashboardScreen();
  }
}
