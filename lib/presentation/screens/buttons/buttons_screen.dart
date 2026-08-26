import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/widgets/custom_button.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated button'),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('Elevated disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated icon'),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text('Filled icon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outlined icon'),
              icon: const Icon(Icons.terminal),
            ),
            TextButton(onPressed: () {}, child: const Text('Text button')),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Text icon'),
              icon: const Icon(Icons.account_box_outlined),
            ),
            CustomButton(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.app_registration_rounded,
                color: Colors.white,
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
