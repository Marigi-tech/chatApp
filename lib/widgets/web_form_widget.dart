import 'package:messenger_app/commons/exports.dart';

class WebFormWidget extends StatelessWidget {
  final Widget form;
  final String formTitle;
  const WebFormWidget({super.key, required this.form, required this.formTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(formTitle, style: TextStyleProperty.titleStyle),
                          const SizedBox(height: 20.0),

                          SingleChildScrollView(child: form),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
