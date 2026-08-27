import 'package:flutter/material.dart';

class DeveloperEnabler extends StatefulWidget {
  const DeveloperEnabler({super.key});

  @override
  State<DeveloperEnabler> createState() => _DeveloperEnablerState();
}

class _DeveloperEnablerState extends State<DeveloperEnabler> {
  bool _isDeveloper = true;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Developer mode'),
      subtitle: const Text('Enables aditional controls'),
      value: _isDeveloper,
      onChanged: (value) => setState(() {
        _isDeveloper = !_isDeveloper;
      }),
    );
  }
}
