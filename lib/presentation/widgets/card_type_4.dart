import 'package:flutter/material.dart';

class CardType4 extends StatelessWidget {
  const CardType4({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.primaryContainer,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/250',
            height: 350,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Si la URL falla o no hay internet, se muestra esto en su lugar
              return const SizedBox(
                height: 250,
                child: Center(
                  child: Icon(
                    Icons.broken_image,
                    color: Colors.red,
                    size: 50,
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
