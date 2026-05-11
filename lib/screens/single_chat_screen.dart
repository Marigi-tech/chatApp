import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/widgets/single_chat_header_widget.dart';
import 'package:messenger_app/widgets/single_chat_widget.dart';

class SingleChatScreen extends ConsumerWidget {
  final bool isGroupChat;
  const SingleChatScreen({super.key, required this.isGroupChat});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBodyWidget(
      hasNoBackButton: false,

      customAppBar: AppBar(
        elevation: 6.0,
        title: SingleChatHeaderWidget(isGroupChat: isGroupChat),
      ),
      pageBody: SingleChatWidget(isGroupChat: isGroupChat),
    );
  }
}
