// import 'package:flutter_riverpod/legacy.dart';
//Legacy state provider, the old way
// final counterProvider = StateProvider<int>((ref) => 5);

//Current state provider statement valid in Riverpod Docs Aug 2026
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Automaticaly generate a super class for riverpod
// It's necessary for riverpod generator
part 'counter_notifier.g.dart';

@Riverpod(keepAlive: true)
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    if (state <= 0) return;
    state--;
  }
}
