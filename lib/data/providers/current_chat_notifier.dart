import 'package:messenger_app/data/models/chat_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_chat_notifier.g.dart';

@riverpod
class CurrentChatNotifier extends _$CurrentChatNotifier {
  @override
  Chat? build() {
    return null;
  }

  void setCurrentChat(Chat currentChat) {
    state = currentChat;
  }


}
