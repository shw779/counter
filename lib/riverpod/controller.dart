import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider((ref) {
  return 0;
});

class RiverPodController {
  void increase(WidgetRef ref) {
    ref.read(counterStateProvider.notifier).state++;
  }

  void decrease(WidgetRef ref) {
    ref.read(counterStateProvider.notifier).state--;
  }
}
