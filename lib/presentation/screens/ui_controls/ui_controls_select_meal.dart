import 'package:flutter/material.dart';

class MealSelector extends StatefulWidget {
  const MealSelector({super.key});

  @override
  State<MealSelector> createState() => _MealSelectorState();
}

class _MealSelectorState extends State<MealSelector> {
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text('Eat breakfast?'),
          secondary: Icon(Icons.coffee),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Eat Lunch?'),
          secondary: Icon(Icons.lunch_dining),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Eat Dinner?'),
          secondary: Icon(Icons.dinner_dining),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}