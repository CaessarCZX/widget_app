import 'package:flutter/material.dart';

enum Transportation { car, plane, boat, submarine }

extension TransportationData on Transportation {
  String get title {
    switch (this) {
      case Transportation.car:
        return 'Car';
      case Transportation.boat:
        return 'Boat';
      case Transportation.plane:
        return 'Plane';
      case Transportation.submarine:
        return 'Submarine';
    }
  }

  String get subtitle {
    switch (this) {
      case Transportation.car:
        return 'Transportation by car';
      case Transportation.boat:
        return 'Transportation by boat';
      case Transportation.plane:
        return 'Transportation by plane';
      case Transportation.submarine:
        return 'Transportation by submarine';
    }
  }
}

class ExpansionTransportation extends StatefulWidget {
  const ExpansionTransportation({super.key});

  @override
  State<ExpansionTransportation> createState() =>
      _ExpansionTransportationState();
}

class _ExpansionTransportationState extends State<ExpansionTransportation> {
  Transportation _selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Transport vehicle'),
      subtitle: Text(_selectedTransportation.name),
      children: [
        RadioGroup<Transportation>(
          groupValue: _selectedTransportation,
          onChanged: (Transportation? value) => setState(() {
            _selectedTransportation = value as Transportation;
          }),
          child: Column(
            children: Transportation.values
                .map(
                  (Transportation option) => RadioListTile<Transportation>(
                    title: Text(option.title),
                    subtitle: Text(option.subtitle),
                    value: option,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
