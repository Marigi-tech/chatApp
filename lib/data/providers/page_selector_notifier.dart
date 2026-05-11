
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_selector_notifier.g.dart';

@riverpod
class PageSelectorNotifier extends _$PageSelectorNotifier {
  @override
  int build() {
    return 0;
  }

  void setPageIndex(int index) {
    state = index;
  }

 
}
