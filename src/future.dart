Future<int> test() {
  Future<int> result = Future.delayed(Duration(seconds: 3)).then((val) => 20);
  return result;
}

void main() async {
  print(10);
  await test().then((val) => print(val));
  print(30);
}