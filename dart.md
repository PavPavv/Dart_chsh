# My Dart cheat sheet

It is an object-oriented, class-based, garbage-collected language with C-style syntax.It can compile to either machine code or JavaScript, and supports interfaces, mixins, abstract classes, reified generics and type inference.

Dart, like JavaScript, is single-threaded. That means that all of our application code runs in the same thread.

## Start

All Dart programs must start with **main()** funciton!!

```dart
void main() {
  print('Hello, world!');
}
```

## Data types

The Dart language is type safe: it uses a combination of static type checking and runtime checks to ensure that a variable’s value always matches the variable’s static type, sometimes referred to as sound typing. Although types are mandatory, type annotations are optional because of type inference.

Everything you can place in a variable is an object, and every object is an instance of a class. Even numbers, functions, and null are objects. With the exception of null (if you enable sound null safety), all objects inherit from the **Object** class.

1. num - int, double
2. int - 1
3. double - 1.5
4. String - 'Hello'
5. bool - true/false
6. null
7. List (array)
8. Set
9. Map

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

```dart
String a = 'Hello', b = 'world', c = '!';

String d = 'Ha';
print(d*5); // 'HaHaHaHaHa'
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
  //  List
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


  //  Set
  Set<String> b = {'Hello', 'world'};
  Set<int> b1 = {100,200,300};
  b.add('!');
  print(b);
  b1.retainAll({1,2,300});
  b1.difference({1,2,300});
  b1.union({1,2,300});
  print('----------------------------------------------------');

  //  Map
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

## Function

```dart
void main() {
  sum(int a, int b) {
    return a + b;
  }
  print(sum(2,3));
}
```

```dart
void main() {
  sum(required int a, int b, [int c, int d ]) {
    return a + b + (c ?? 0) + (d ?? 0);
  }
  print(sum(2,3,d:5));
}
```

## Anonymous function

```dart
double uniFunc(int a, int b, Function operation) {
  return operation(a, b);
}

void main {
  var result = uniFunc(2,2,((a,b)) => a+b);
}
```

### Generics

```dart
test<T>(T a, T b) {
  return '$a and $b';
}

void main() {
  print(test());
}
```

### Closure

```dart

book(String title) {
  return (publisher) {
    return '$title: $publisher';
  };
}

void main() {
  var ontheroad = book('On the road');
  var b = ontheroad('Vertigo');
  print(b);
}
```

## Classes

```dart
class Animal {
  final String kind;
  final bool? isMale;

  String get animalKind {
    return kind;
  }

  bool get animalIsMale {
    return isMale ?? true;
  }

  String test() {
    return 'test';
  }

  // Constrictor
  Animal({required this.kind, this.isMale});
}

class Dog extends Animal {
  String name;
  double age;
  final String? color;

  // Constrictor
  Dog({required super.kind, super.isMale, required this.name, required this.age, this.color}) {
    print('Created');
  }

  int birthYear() {
    int result = 2021;
    return result;
  }

  String info() {
    return 'Name: $name and age is $age';
  }

  String get dogName {
    return name;
  }

  set newName(String newName) {
    name = newName;
  }

  @override
  String test() {
    return 'Dogs are awesome!';
  }
}

void main() {
  Dog dog = Dog(kind: 'dog', name: 'Jack', age: 1.3, color: 'black', isMale: true);

  print(dog.name);
  print(dog.age);
  print(dog.color);
  print(dog.birthYear());
  print(dog.info());
  dog.newName = 'Jack Black';
  print(dog.dogName);
  print(dog.animalKind);
  print(dog.animalIsMale);
  print(dog.test());
}
```

You can only extend only from a single parent. But you can implement by a multiple classes;

```dart
mixin showStat {
  showThisStat() {
    return 'some stats';
  }
}

class ID {
  final int id;

  // Constructor
  ID(this.id);
}

class Name {
  final String name;

  //  Constructor
  Name(this.name);

  String showName() {
    return name;
  }
}

class User with showStat implements ID, Name {
  @override
  final int id;
  @override
  final String name;

  User(this.id, this.name);

  @override
  String showName() {
    return '$name $id';
  }
}

var test = User(12, 'Jack');

void main() {
   print(test.showThisStat());
}
```

Abstract class can not have children. It is can not be instanced.

```dart
abstract class Research {
  String name;

  //  Constructor
  Research(this.name);
}

class ResearchPro extends Research {
  int year;

  //  Constructor
  ResearchPro(this.year, super.name);
}
var research = ResearchPro(2023, 'Test');

void main() {
  print(research.name);
}
```

### Extensions

```dart
class User {
  String name;

  User(this.name);
}

extension PrintName on User {
  printName() {
    return name;
  }
}

void main() {
  var paul = User('Paul');
  print(paul.printName());
}
```

```dart
extension PlusOne on int {
  plusOne() {
    return this + 1;
  }
}

void main() {
  int a = 33;
  print(a.plusOne());
}
```

### Static

```dart
class Settings {
  static const language = [
    'ru',
    'en',
    'de',
  ];
  static const nightMode = ['day', 'night'];
}

var ex = Settings();

void main() {
  print(Settings.language);
}
```

### Fabric constructor

```dart
class User {
  int id;

  static final cacheUsers = <User>[
    User(0),
    User(1),
    User(2),
  ];

  //  Standard constructor always creates new objects
  User(this.id);

  // Fabric constructors not always create new objects, but you can work with it optionally
  factory User.cahce(int id) {
    if(id == 0) {
      return cacheUsers[0];
    } else if(id == 1) {
      return cacheUsers[1];
    } else if(id == 2) {
      return cacheUsers[2];
    } else {
      return Director(id);
    }
  }
}

class Director extends User {
  Director(int id) : super(id);
}

final a = User.cahce(0);
final b = User.cahce(0);
final c = User.cahce(8);

void main() {
  print(a.hashCode);
  print(b.hashCode);
}


```

### Generics in classes

```dart
class User<T> {
  String name;
  T password;

  User(this.name, this.password);
}

var u = User('Jack', 123456);

void main() {
  print(u.name);
  print(u.password);
}
```

## Errors handling

```dart
class ErrorBoundary {
  Object err;
  String message;

  ErrorBoundary(this.err,this.message);
}

operation(int a, int b) {
  if (a == 0) {
    throw ErrorBoundary(a, ':( ');
  } else if (b == 0) {
    throw ErrorBoundary(b, ':( ');
  }
  return a / b;
}

void main() {
  print('start');
  try {
    print(operation(7,0));
  } on ErrorBoundary catch (e) {
    print(e);
  } finally {
    print('finish');
  }
  print('continue');
}
```

## Future

```dart
// class Future in Dart

void main() {
  int a = 1;
  Future<int> b = Future.delayed(Duration(seconds: 5)).then((val) => 2);
  int c = 3;

  print(a);
  b.then((val) => print(val));
  print(c);
}
```

```dart
void main() {
  print(1);
  print(2);
  Future.delayed(Duration(seconds: 3)).then((_) => print(3));
  print(4);
  print(5);
  //  1 2 4 5... 3
}
```

### Async/await

```dart
Future<int> test() {
  Future<int> result = Future.delayed(Duration(seconds: 3)).then((val) => 20);
  return result;
}

void main() async {
  print(10);
  await test().then((val) => print(val));
  print(30);
}
```

## Streams

## Enums

```dart
// You can't reassign enum after it has been created

enum Colors {
  red,
  blue,
  green,
  yellow
}

enum NewColors {
  red(50,100),
  blue(50,100),
  green(50,100),
  yellow(50,100);

  final int opacity50;
  final int opacity100;

  const NewColors(this.opacity50, this.opacity100);
}

void main() {
  print(Colors.green.name);
  var list = [];

  for (int i = 0; i < Colors.values.length; i++) {
    print(Colors.values[i].name);
    list.add(Colors.values[i].name);
  }
  print(list);

  print(NewColors.blue.opacity50);
}
```
