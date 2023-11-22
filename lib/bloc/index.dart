import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:shw_test/bloc/bloc.dart';
import 'package:shw_test/components/button.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = GetIt.I<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        backgroundColor: Colors.red[100],
      ),
      body: Center(
        child: Column(
          children: [
            StreamBuilder(
              stream: counterBloc.counter,
              initialData: counterBloc.currentNumber(),
              builder: (context, snapshot) {
                return Text(
                  snapshot.data.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: "+",
                  fontSize: 30,
                  onPressed: () {
                    counterBloc.increase();
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                Button(
                  text: "-",
                  fontSize: 30,
                  onPressed: () {
                    counterBloc.decrease();
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
