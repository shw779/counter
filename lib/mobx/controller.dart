import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  void decrement() {
    value--;
  }
}
