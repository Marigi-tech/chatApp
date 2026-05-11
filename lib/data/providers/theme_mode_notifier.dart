import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_notifier.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  bool build() {
    return false;
  }

  bool? themeIsDark;

  void toggleThemeMode(bool currentThemeMode) {
    state = !currentThemeMode;
  }
}
