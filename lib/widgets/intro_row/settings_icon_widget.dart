import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/providers/theme_mode_notifier.dart';

class SettingsIconWidget extends ConsumerWidget {
  const SettingsIconWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeModeProvider);
    Color borderColor = Colors.transparent;

    return IconButton(
      icon: const Icon(CupertinoIcons.gear),
      style: ButtonStyle(
        elevation: WidgetStateProperty.all<double>(6),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      //Open a pop up with a bunch of settings
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return Consumer(
              builder: (context, ref, _) {
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 05.0,
                      vertical: 04,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //App theme  Mode
                          Card(
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: borderColor, width: 0.09),
                              borderRadius: BorderRadius.circular(05),
                            ),

                            child: ListTile(
                              leading: Icon(
                                currentThemeMode == true
                                    ? Icons.light_mode
                                    : Icons.dark_mode,

                                size: 14,
                                color: ColorConstants.blueGreyColor,
                              ),
                              title: Text(
                                'System Mode : ${currentThemeMode ? 'Dark' : 'Light'}',
                                style: TextStyle(fontSize: 13),
                              ),
                              onTap: () => ref
                                  .read(themeModeProvider.notifier)
                                  .toggleThemeMode(currentThemeMode),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
