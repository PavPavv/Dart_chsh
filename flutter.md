# My Flutter cheat sheet

## Start of the app

```dart
void main() {
  runApp(const MyApp());
}
```

## Stateless vs Stateful widgets

```dart
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: FunScreen()),
      ),
    ),
  );
}

class FunScreen extends StatefulWidget {
  const FunScreen({Key? key}) : super(key: key);

  @override
  State<FunScreen> createState() => _FunScreen();
}

class _FunScreen extends State<FunScreen> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {
              a++;
              setState(() {});
              print(a);
            },
            icon: const Icon(Icons.radio_button_checked_outlined)),
        Text('$a'),
      ],
    );
  }
}
```

## Widget live cycle methods

```dart
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: ParentScreen()),
      ),
    ),
  );
}

// Widget itself
class ParentScreen extends StatefulWidget {
  const ParentScreen({Key? key}) : super(key: key);

  @override
  State<ParentScreen> createState() => _ParentScreen();
}

class _ParentScreen extends State<ParentScreen> {
  bool isExist = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        IconButton(
            onPressed: () {
              if (isExist) {
                isExist = false;
              } else {
                isExist = true;
              }
              setState(() {});
            },
            icon: const Icon(Icons.kayaking)),
        isExist ? const ChildScreen() : Container(),
      ],
    ));
  }
}

class ChildScreen extends StatefulWidget {
  const ChildScreen({Key? key}) : super(key: key);

  @override
  State<ChildScreen> createState() => _ChildScreen();
}

class _ChildScreen extends State<ChildScreen> {
  @override
  void initState() {
    super.initState();
    print('state has been initialized');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('WTF?');
  }

  @override
  void didUpdateWidget(covariant ChildScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('widget did update');
  }

  @override
  Widget build(BuildContext context) {
    print('Wwdget did mount');
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(color: Colors.greenAccent),
      child: const Text('Child'),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('widget did UNmount');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('widget is deactevated');
  }

  @override
  void activate() {
    super.activate();
    print('widget is active');
  }
}
```
