import 'dart:async';

class CounterBloc {
  int _counter = 0;
  final _streamController = StreamController.broadcast();
  StreamSink get _sink => _streamController.sink;
  Stream get counter => _streamController.stream;

  void increase() {
    _sink.add(++_counter);
  }

  void decrease() {
    _sink.add(--_counter);
  }

  void dispose() {
    _streamController.close();
  }

  int currentNumber() {
    return _counter;
  }
}
