import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shw_test/components/button.dart';
import 'package:shw_test/riverpod/controller.dart';

class RiverpodScreen extends ConsumerWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = RiverPodController();
    String counter = ref.watch(counterStateProvider).toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              counter,
              style: const TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: "+",
                  fontSize: 30,
                  onPressed: () {
                    controller.increase(ref);
                    print(counter);
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                Button(
                  text: "-",
                  fontSize: 30,
                  onPressed: () {
                    controller.decrease(ref);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
