
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/colors.dart';
import 'package:messenger_app/data/providers/theme_mode_notifier.dart';

class SettingsDialog extends ConsumerWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Settings', style: TextStyle(fontSize: 16)),
          CloseButton(),
        ],
      ),
      content: Container(
        height: 90,
        padding: EdgeInsets.symmetric(horizontal: 05.0, vertical: 04),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //App theme  Mode
              Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstants.transparentColor,
                    width: 0.09,
                  ),
                  borderRadius: BorderRadius.circular(05),
                ),

                child: ListTile(
                  leading: Icon(
                    themeMode == true ? Icons.light_mode : Icons.dark_mode,

                    size: 16,
                    color: ColorConstants.blueGreyColor,
                  ),
                  title: Text(
                    'System Mode : ${themeMode == true ? 'Dark' : 'Light'}',
                    style: TextStyle(fontSize: 13),
                  ),
                  onTap: () => ref
                      .read(themeModeProvider.notifier)
                      .toggleThemeMode(themeMode),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
