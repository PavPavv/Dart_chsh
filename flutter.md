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

## Simple stateless markup

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 238, 211),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Icon(Icons.arrow_back_ios)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search_rounded,
                            size: 32,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Mobile Solutions Ltd.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Icon(
                                Icons.face_retouching_natural,
                                size: 100,
                              ),
                              const Text(
                                'Sleepy',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                ],
                              ),
                              const Text(
                                'Backend developer',
                                style: TextStyle(fontSize: 10),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                        size: 20,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.email,
                                        size: 20,
                                      )),
                                ],
                              )
                            ]),
                      ),
                      Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Icon(
                                Icons.face_unlock_rounded,
                                size: 100,
                              ),
                              const Text(
                                'Ghost_5',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                ],
                              ),
                              const Text(
                                'Frontend developer',
                                style: TextStyle(fontSize: 10),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                        size: 20,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.email,
                                        size: 20,
                                      )),
                                ],
                              )
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Schedule',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Jan, 2023',
                          style: TextStyle(
                            fontSize: 14,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 142, 131, 131),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(children: const [
                            Text('16',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Mon'),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 142, 131, 131),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(children: const [
                            Text('17',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Thr'),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 142, 131, 131),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(children: const [
                            Text('17',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Wed'),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 142, 131, 131),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                          ),
                          child: Column(children: const [
                            Text('18',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Tue'),
                          ]),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 65, 32, 32),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 18,
                              ),
                              child: Column(children: const [
                                Text('20',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                                Text('Fri',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                SizedBox(height: 5),
                                Icon(
                                  Icons.alarm,
                                  color: Colors.white,
                                  size: 14,
                                )
                              ]),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Available Slots',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    runSpacing: 10,
                    spacing: 30,
                    children: [
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 57, 22, 22),
                        ),
                        child: const Center(
                          child: Text(
                            '9am-10am',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 142, 131, 131),
                        ),
                        child: const Center(
                          child: Text(
                            '11am-12am',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 142, 131, 131),
                        ),
                        child: const Center(
                          child: Text(
                            '2pm-3am',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 142, 131, 131),
                        ),
                        child: const Center(
                          child: Text(
                            '5pm-7pm',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```