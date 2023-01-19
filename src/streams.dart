// Stream - also class in Dart
// Stream
// StreamSubscription
// StreamController

import 'dart:async';

void main() {
  Stream<int> conveyer = Stream.periodic(Duration(seconds: 1), (tick) => tick);
  StreamSubscription<int> subscription = conveyer.listen((event) {
    print(event);
  });
  StreamController controlEvents = StreamController();
  controlEvents.add('First');
  controlEvents.add('Second');
  controlEvents.add('Third');

  controlEvents.stream.listen((event) {
    print(event);
  });

  // unsubscribe
  Future.delayed(Duration(seconds: 7)).then((value) => {
    subscription.cancel()
  });
}