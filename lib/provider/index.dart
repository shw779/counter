import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shw_test/components/button.dart';
import 'package:shw_test/provider/controller.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              context.watch<CountProvider>().count.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: "+",
                  fontSize: 30,
                  onPressed: () {
                    context.read<CountProvider>().increase();
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                Button(
                  text: "-",
                  fontSize: 30,
                  onPressed: () {
                    context.read<CountProvider>().decrease();
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
