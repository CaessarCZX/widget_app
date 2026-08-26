import 'package:flutter/material.dart';
import 'package:widget_app/presentation/widgets/widgets.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static const String name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards screen')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...cards.map(
              (card) =>
                  CardType1(label: card['label'], elevation: card['elevation']),
            ),
            SizedBox(height: 15,),
            ...cards.map(
              (card) =>
                  CardType2(label: card['label'], elevation: card['elevation']),
            ),
            SizedBox(height: 15,),
            ...cards.map(
              (card) =>
                  CardType3(label: card['label'], elevation: card['elevation']),
            ),
            SizedBox(height: 15,),
            ...cards.map(
              (card) =>
                  CardType4(label: card['label'], elevation: card['elevation']),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}

