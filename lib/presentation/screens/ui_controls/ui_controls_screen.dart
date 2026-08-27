import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/ui_controls/ui_controls_developer_enabler.dart';
import 'package:widget_app/presentation/screens/ui_controls/ui_controls_select_meal.dart';
import 'package:widget_app/presentation/screens/ui_controls/ui_controls_transportation_opt.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  static const String name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ui Controls and Tiles')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(), // Static list view behavior
      children: [
        DeveloperEnabler(),
        ExpansionTransportation(),
        MealSelector(),
      ],
    );
  }
}
