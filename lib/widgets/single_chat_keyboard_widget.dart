import 'package:messenger_app/commons/exports.dart';

class SingleChatKeyboardWidget extends StatefulWidget {
  const SingleChatKeyboardWidget({super.key});

  @override
  State<SingleChatKeyboardWidget> createState() =>
      _SingleChatKeyboardWidgetState();
}

class _SingleChatKeyboardWidgetState extends State<SingleChatKeyboardWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController messageController = TextEditingController();
  bool hasText = false;
  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          Expanded(
            flex: 12,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: ValueListenableBuilder<TextEditingValue>(
                valueListenable: messageController,
                builder: (context, value, child) {
                  hasText = value.text.trim().isNotEmpty;

                  return TextFormField(
                    controller: messageController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,
                    decoration: InputDecorationProperty.textInputDecoration(
                      hintText: 'Enter message here',
                      suffixIcon: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Visibility(
                          visible: hasText,
                          child: IconButton(
                            icon: Icon(Icons.send, size: 20),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // SizedBox(width: 10.0),
          //camera / gallery
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //camera or gallery image
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Icon(CupertinoIcons.camera, size: 20),
                  ),
                ),
                //location
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Icon(CupertinoIcons.map, size: 20),
                  ),
                ),

                //audio
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Icon(CupertinoIcons.mic, size: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
