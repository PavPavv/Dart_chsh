# My Dart cheat sheet

## Start

All Dart programs must start with **main()** funciton!!

```dart
void main() {
  print('Hello, world!');
}
```

## Data types

The Dart language is type safe: it uses a combination of static type checking and runtime checks to ensure that a variable’s value always matches the variable’s static type, sometimes referred to as sound typing. Although types are mandatory, type annotations are optional because of type inference.

Everything you can place in a variable is an object, and every object is an instance of a class. Even numbers, functions, and null are objects. With the exception of null (if you enable sound null safety), all objects inherit from the **Object **class.

1. int  - 1
2. double - 1.5
3. String - 'Hello'
4. bool - true/false
5. List (array)
6. Set
7. Map

```dart
void main() {
  int a = 5;
  double b = 1.5;
  String c = 'Hello';
  bool d = true;
  bool e = false;

  List arr = [1,'1',true,1,10];
  Set setF = {1,'1',true};
  Map y = {1: 'hello',2: true};
}
```

## Variables

- var
- dynamic
- final
- const

The type of the name variable is inferred to be String, but you can change that type by specifying it. If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).

```dart
void main() {
  var test = 'Hi!';
}
```

Another option is to explicitly declare the type that would be inferred:

```dart
void main() {
  String test = 'Hi!';
}
```

Uninitialized variables that have a nullable type have an initial value of null. (If you haven’t opted into null safety, then every variable has a nullable type.) Even variables with numeric types are initially null, because numbers—like everything else in Dart—are objects.

```dart
void main() {
  int? lineCount;
  assert(lineCount == null);
}
```

If you’re sure that a variable is set before it’s used, but Dart disagrees, you can fix the error by marking the variable as late:
( If you fail to initialize a late variable, a runtime error occurs when the variable is used.)

```dart
void main() {
  late String description;
  void main() {
    description = 'Feijoada!';
    print(description);
  }
}
```

## List, Set, Map

### List

```dart
void main() {
  List<int> a = [1,2,3,4,5];
  Set<String> b = {'Hello', 'world'};
  Map<int, String> c = {
    1: 'Hello',
    2: 'world',
  };
  print(a);
}
```

```dart
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
```

##  Function

