import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shw_test/components/button.dart';
import 'package:shw_test/mobx/controller.dart';

class MobxScreen extends ConsumerWidget {
  const MobxScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = Counter();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Observer(
              builder: (_) => Text(
                counter.value.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: "+",
                  fontSize: 30,
                  onPressed: () {
                    counter.increment();
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                Button(
                  text: "-",
                  fontSize: 30,
                  onPressed: () {
                    counter.decrement();
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
