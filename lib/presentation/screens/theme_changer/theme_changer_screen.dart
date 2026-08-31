import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/theme_provider/theme_notifier.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  static const String name = 'theme_changer_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkTheme = ref.watch(isDarkThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(isDarkThemeProvider.notifier).changeTheme(),
            icon: Icon(
              isDarkTheme
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined,
            ),
          ),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      child: RadioGroup(
        groupValue: selectedColor,
        onChanged: (int? value) {
          ref.read(selectedColorProvider.notifier).changeColor(value as int);
        },
        child: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final color = colors[index];
            return RadioListTile(
              value: index,
              title: Text('This color', style: TextStyle(color: color)),
              subtitle: Text('${color.toARGB32()}'),
              activeColor: color,
            );
          },
        ),
      ),
    );
  }
}
