// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_selector_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PageSelectorNotifier)
const pageSelectorProvider = PageSelectorNotifierProvider._();

final class PageSelectorNotifierProvider
    extends $NotifierProvider<PageSelectorNotifier, int> {
  const PageSelectorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pageSelectorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pageSelectorNotifierHash();

  @$internal
  @override
  PageSelectorNotifier create() => PageSelectorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$pageSelectorNotifierHash() =>
    r'9b55756839ffd72f1bc3e0c47d1d0b9fa2876e1d';

abstract class _$PageSelectorNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
