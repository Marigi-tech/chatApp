import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/lists/pages_list.dart';
import 'package:messenger_app/data/lists/web_pages_list.dart';
import 'package:messenger_app/data/notifiers/sidebar_notifiers.dart';
import 'package:messenger_app/data/providers/page_selector_notifier.dart';
import 'package:messenger_app/widgets/intro_row/intro_row_widget.dart';
import 'package:messenger_app/widgets/sidebar/sidebar_widget.dart';

class DesktopDashboardScreen extends ConsumerWidget {
  const DesktopDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(pageSelectorProvider);

    return Scaffold(
      body: ValueListenableBuilder<bool>(
        valueListenable: isSidebarCollapsedNotifier,
        builder: (context, isCollapsed, child) {
          return Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: isCollapsed ? 90 : 200,
                child: SidebarWidget(pages: pages),
              ),

              // Page Area
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// Intro row
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: IntroRowWidget(),
                    ),
                    // Actual page content
                    Expanded(child: webPages.elementAt(currentPageIndex)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
