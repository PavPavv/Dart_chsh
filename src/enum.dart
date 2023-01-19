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