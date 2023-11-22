import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shw_test/components/button.dart';
import 'package:shw_test/getx/controller.dart';

class GetXScreen extends StatelessWidget {
  const GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.number.toString(),
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
                    controller.increase();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                Button(
                  text: "-",
                  fontSize: 30,
                  onPressed: () {
                    controller.decrease();
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
