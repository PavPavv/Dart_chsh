void main() {
  List<int> arr = [1,2,3,4,5];
  
  print(arr.runtimeType);
  
  int a = arr.length;
  arr.add(6);
  arr.addAll([7,8,9]);
  arr.insert(4,55);
  arr.insertAll(5,[555,559]);
  arr.setAll(1,[77,777]);
  arr.setRange(2,4,[99,999,998],2);
  arr.remove(559);
  arr.removeAt(7);
  arr.removeLast();
  arr.removeRange(1,2);
  arr.replaceRange(1,2,[1,2]);
  arr.sort();
  //   arr.sort((a,b)=>a.compareTo(b));
  print(arr);
  print(arr.reversed);
  print(arr.first);
  print(arr.last);
  //   print(arr.single);
  //   print(arr.shuffle);
  print(arr.indexOf(9)); // 8
  print(arr.lastIndexOf(5));  //  4
  print(arr.hashCode);
  print(arr.isEmpty);
  print(arr.isNotEmpty);
  print('----------------------------------------------------');
  
  print(['Hello', 'world!'].join(' ')); //  {Hello, world, !}
  arr.forEach((el) => print(el));
  print('End of forEach');
  var arrSum = arr.fold(0, (prev,cur) => prev + cur);
  print(arrSum);
  var arrTest = arr.reduce((val, el) => val + 1);
  print(arrTest);
  print(arr.any((el) => el == 9));  //  true
  print(arr.every((el) => el > 0)); //  true
  print(arr.singleWhere((el) => el == 9)); //  9
  print(arr.firstWhere((el) => el < 10)); //  1
  print(arr.lastWhere((el) => el < 10)); //  9
  print(arr.indexWhere((el) => el > 7)); //  4
  arr.removeWhere((el) => el == 55);
  arr.retainWhere((el) => el > 10);
  print(arr.contains(9));  //  true
  print(arr.elementAt(3)); //  4
  print(arr.asMap());
  [1,2,3,3,3].toSet();
  [1,2,3,3,3].toString();
  print('----------------------------------------------------');
  
  
  //  Iterable   
   //  final aa = arr.iterator;
  //  aa.moveNext();
  print(arr.getRange(0,2)); //  (1,2)
  print(arr.followedBy([100,300]));
  print([[100,200,300],[400,500,600],[700,800,900]].expand((el) => el));
  List<String> strArr = ['one', 'two', 'three','four','five'];
  strArr.fillRange(1,2,'ten');
  print(strArr);
  var arr1 = arr.cast<int>();
  print(arr1);
  arr1.map((el) => el + 1);
  // arr1.skip(2);
  // arr1.skipWhile((el) => el < 9);
  var arr3 = arr1.sublist(1,2);
  arr1.take(2);
  arr1.takeWhile((el) => el < 10);
  arr1.where((el)=> el <= 9);
  arr1.whereType<int>();
  print('----------------------------------------------------');
  
  
  
  Set<String> b = {'Hello', 'world'};
  Set<int> b1 = {100,200,300};
  b.add('!');
  print(b);
  b1.retainAll({1,2,300});
  b1.difference({1,2,300});
  b1.union({1,2,300});
  print('----------------------------------------------------');
  
  Map<int, String> obj = {
    1: 'Hello',
    2: 'world',
  };
  //  print(obj['1']);
  // obj.toList();
  obj.putIfAbsent(3, () => '!');
  print('----------------------------------------------------');
}