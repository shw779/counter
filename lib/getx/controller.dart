import 'package:get/get.dart';

class Controller {
  RxInt number = 0.obs;

  void increase() {
    number++;
  }

  void decrease() {
    number--;
  }
}
