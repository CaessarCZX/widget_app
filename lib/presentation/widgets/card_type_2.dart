import 'package:flutter/material.dart';

class CardType2 extends StatelessWidget {
  const CardType2({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        side: BorderSide(color: colors.outline),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Outline'),
            ),
          ],
        ),
      ),
    );
  }
}
