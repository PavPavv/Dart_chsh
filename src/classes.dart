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
  
  // Constructor
  User(this.id, this.name);
  
  @override
  String showName() {
    return '$name $id';
  }
}

var test = User(12, 'Jack');

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

  print(test.showThisStat());
}