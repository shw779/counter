import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shw_test/components/button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              text: 'GetX',
              fontSize: 40,
              onPressed: () {
                context.push("/getX");
              },
            ),
            Button(
              text: 'BloC',
              fontSize: 40,
              onPressed: () {
                context.push("/bloc");
              },
            ),
            Button(
              text: 'Provider',
              fontSize: 40,
              onPressed: () {
                context.push("/provider");
              },
            ),
            Button(
              text: 'RiverPod',
              fontSize: 40,
              onPressed: () {
                context.push("/riverpod");
              },
            ),
            Button(
              text: 'MobX',
              fontSize: 40,
              onPressed: () {
                context.push("/mobx");
              },
            ),
          ],
        ),
      ),
    );
  }
}
