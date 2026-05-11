import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/data/providers/theme_mode_notifier.dart';

class FormLabelWidget extends ConsumerWidget {
  final String label;
  final bool? isRequired;
  const FormLabelWidget({
    super.key,
    required this.label,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeModeProvider);
    return Padding(
      padding: EdgeInsets.only(bottom: 6),
      child: Align(
        alignment: Alignment.topLeft,
        child: RichText(
          text: TextSpan(
            text: label,
            children: [
              if (isRequired == true)
                TextSpan(
                  text: ' * ',
                  style: TextStyle(
                    color: ColorConstants.redColor,
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                  ),
                ),
            ],
            style: TextStyleProperty.descriptionStyle.copyWith(
              fontStyle: FontStyle.normal,
              fontSize: 15,
              color: currentThemeMode == false
                  ? ColorConstants.lightNavColor
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
