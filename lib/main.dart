import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/providers/theme_mode_notifier.dart';
import 'package:messenger_app/screens/home_screen.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  //todo : use shared preferences to get the current device's theme mode and sign in status
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeModeProvider);
    return MaterialApp(
      title: 'Jamii Pamoja App',
      themeMode: currentThemeMode == true ? ThemeMode.light : ThemeMode.dark,
      theme: ThemeData(
        fontFamily: 'Lato',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontFamily: 'Montserrat'),
          headlineMedium: TextStyle(fontFamily: 'Montserrat'),
          titleLarge: TextStyle(fontFamily: 'Montserrat'),
          
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorConstants.greenColor,
          brightness: Brightness.light,
        ),
      ),

      darkTheme: ThemeData(
        fontFamily: 'Lato',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontFamily: 'Montserrat'),
          headlineMedium: TextStyle(fontFamily: 'Montserrat'),
          titleLarge: TextStyle(fontFamily: 'Montserrat'),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorConstants.greenColor,
          brightness: Brightness.dark,
        ),
      ),

      home: const HomeScreen(),
    );
  }
}
