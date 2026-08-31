import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider/counter_notifier.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const String name = 'counter_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter + Riverpod'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('value:', style: TextStyle(fontSize: 20)),
            const SizedBox(width: 10),
            Text('$counter', style: TextStyle(fontSize: 50, height: 0)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'add_item',
            elevation: 1,
            onPressed: () {
              // Legacy change of state in Reverpod
              // ref.read(counterProvider.notifier).state++;
              // ref.read(counterProvider.notifier).update((state) => state + 1);
              // Modern change of state in Riverpod Aug 2026
              ref.read(counterProvider.notifier).increment();
            },
            child: Icon(Icons.plus_one_outlined),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'minus_item',
            elevation: 1,
            onPressed: () => ref.read(counterProvider.notifier).decrement(),
            child: Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
