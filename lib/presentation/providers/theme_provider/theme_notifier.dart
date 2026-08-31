import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

part 'theme_notifier.g.dart';

// Old way to declare an inmutable provider
// final colorListProvider = Provider((ref) => colors);

// New way to declare an inmutable provider
// Provider for inmutable color list
@riverpod
List<Color> colorList(Ref ref) {
  return colors;
}

// Provider for current theme color
@Riverpod(keepAlive: true)
class SelectedColorNotifier extends _$SelectedColorNotifier {
  @override
  int build() {
    return 0;
  }

  void changeColor(int value) {
    if (value <= 0 && value >= colors.length - 1) return;
    state = value;
  }
}

// Provider for current theme mode
@riverpod
@Riverpod(keepAlive: true)
class IsDarkThemeNotifier extends _$IsDarkThemeNotifier {
  @override
  bool build() {
    return false;
  }

  void changeTheme() {
    state = !state;
  }
}
