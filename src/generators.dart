// might be sync* or async*

Iterable<int> generatorFromTo(int start, int finish) sync* {
  for (int i = start; i <= finish; i++) {
    yield i;
  }
}

Stream<int> generatorFT(int start, int finish) async* {
  for (int i = start; i <= finish; i++) {
    yield i;
  }
}

void main() {
  print(generatorFromTo(20, 30));
  generatorFT(30,40).listen((event) {
    print(event);
  });
}