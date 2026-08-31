// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(colorList)
final colorListProvider = ColorListProvider._();

final class ColorListProvider
    extends $FunctionalProvider<List<Color>, List<Color>, List<Color>>
    with $Provider<List<Color>> {
  ColorListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'colorListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$colorListHash();

  @$internal
  @override
  $ProviderElement<List<Color>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Color> create(Ref ref) {
    return colorList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Color> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Color>>(value),
    );
  }
}

String _$colorListHash() => r'bf0ffed8b5f598c5b161be397e0e452498980375';

@ProviderFor(SelectedColorNotifier)
final selectedColorProvider = SelectedColorNotifierProvider._();

final class SelectedColorNotifierProvider
    extends $NotifierProvider<SelectedColorNotifier, int> {
  SelectedColorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedColorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedColorNotifierHash();

  @$internal
  @override
  SelectedColorNotifier create() => SelectedColorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$selectedColorNotifierHash() =>
    r'e534ea9ecaf12bfb25ed4ee633c89c91ccb202b7';

abstract class _$SelectedColorNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(IsDarkThemeNotifier)
final isDarkThemeProvider = IsDarkThemeNotifierProvider._();

final class IsDarkThemeNotifierProvider
    extends $NotifierProvider<IsDarkThemeNotifier, bool> {
  IsDarkThemeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isDarkThemeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isDarkThemeNotifierHash();

  @$internal
  @override
  IsDarkThemeNotifier create() => IsDarkThemeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isDarkThemeNotifierHash() =>
    r'c58ef252da2de32630a02702fe705199ed76fcbb';

abstract class _$IsDarkThemeNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
