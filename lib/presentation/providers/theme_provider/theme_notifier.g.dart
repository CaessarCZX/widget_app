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

@ProviderFor(ThemeNotifier)
final themeProvider = ThemeNotifierProvider._();

final class ThemeNotifierProvider
    extends $NotifierProvider<ThemeNotifier, AppTheme> {
  ThemeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeNotifierHash();

  @$internal
  @override
  ThemeNotifier create() => ThemeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppTheme>(value),
    );
  }
}

String _$themeNotifierHash() => r'5f5effd803d7347b07f64e687eba4f6501a265a9';

abstract class _$ThemeNotifier extends $Notifier<AppTheme> {
  AppTheme build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AppTheme, AppTheme>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppTheme, AppTheme>,
              AppTheme,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
