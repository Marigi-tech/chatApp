
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/providers/theme_mode_notifier.dart';

class ThemeToggleWidget extends ConsumerWidget {
  const ThemeToggleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return IconButton(
      icon: Icon(themeMode == true ? Icons.light_mode : CupertinoIcons.moon, size: 20),

      onPressed: () => ref.read(themeModeProvider.notifier).toggleThemeMode(themeMode),
    );
  }
}