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

// Provider for current Application's Theme Data
@Riverpod(keepAlive: true)
class ThemeNotifier extends _$ThemeNotifier {
  @override
  AppTheme build() {
    return AppTheme();
  }

  void toggleDarkMode() {
    state = state.copyWith(isDarkTheme: !state.isDarkTheme);
  }

  void changeColorIndex(int colorIndex) {
    if (colorIndex <= 0 && colorIndex >= colors.length - 1) return;
    state = state.copyWith(selectedColor: colorIndex);
  }
}
