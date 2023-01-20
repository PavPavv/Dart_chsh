book(String title) {
  return (publisher) {
    return '$title: $publisher';
  };
}

void main() {
  var ontheroad = book('On the road');
  var b = ontheroad('Vertigo');
  // print(b);

  void test() {
    print('test');
  }

  test();
}
