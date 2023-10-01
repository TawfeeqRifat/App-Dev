import 'package:flutter/material.dart';
import 'package:akkinator_at_home/global.dart' as globals;

int key = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //String movies = new List(11);
    globals.movies.shuffle();
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Think anyone of the Movies...\n\n',
              textAlign: TextAlign.center,
              //overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[0]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[1]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[2]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[3]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[4]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[5]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[6]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[7]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[8]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '${globals.movies[9]}\n',
              textAlign: TextAlign.center,

              //overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const _pg1();
                  }));
                },
                child: const Text('Next'))
          ],
        ),
      ),
    );
  }
}

class _pg1 extends StatefulWidget {
  const _pg1({super.key});

  @override
  State<_pg1> createState() => Pg1();
}

class Pg1 extends State<_pg1> {
  @override
  Widget build(BuildContext context) {
    List<String> page1 = [
      'The Godfather',
      'Spider-Man 2',
      'Memento',
      'Pulp Fiction',
      'Joker'
    ];
    page1.shuffle();
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Is Your Movie any one of the below',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '\n\n${page1[0]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page1[1]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page1[2]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page1[3]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page1[4]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                globals.key = globals.key + 1;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const _pg2();
                }));
              },
              child: const Text('YES')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const _pg2();
                }));
              },
              child: const Text('NO')),
        ]),
      ),
    );
  }
}

class _pg2 extends StatefulWidget {
  const _pg2({super.key});

  @override
  State<_pg2> createState() => Pg2();
}

class Pg2 extends State<_pg2> {
  @override
  Widget build(BuildContext context) {
    List<String> page2 = [
      'Gladiator',
      'Spider-Man 2',
      'Shawshank Redemption',
      'Fight Club',
      'Joker',
      "Harry Potter"
    ];
    page2.shuffle();
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Is Your Movie any one of the below\n\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '\n\n${page2[0]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page2[1]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page2[2]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page2[3]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page2[4]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                globals.key = globals.key + 2;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const _pg3();
                }));
                /*Navigator.of(context).push(
                    MaterialPageRouter(Builder(builder: (BuildContext context) {
                  return const pg3();
                })));*/
              },
              child: const Text('YES')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const _pg3();
                }));
              },
              child: const Text('NO')),
        ]),
      ),
    );
  }
}

class _pg3 extends StatefulWidget {
  const _pg3({super.key});

  @override
  State<_pg3> createState() => Pg3();
}

class Pg3 extends State<_pg3> {
  @override
  Widget build(BuildContext context) {
    List<String> page3 = [
      'Memento',
      'Shawshank Redemption',
      'Interstellar',
      'Pulp Fiction',
      'Joker',
      'Fight Club'
    ];
    page3.shuffle();
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Is Your Movie any one of the below\n\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '\n\n${page3[0]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page3[1]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page3[2]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page3[3]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page3[4]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page3[5]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                globals.key = globals.key + 3;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const _pg4();
                }));
              },
              child: const Text('YES')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const _pg4();
                }));
              },
              child: const Text('NO')),
        ]),
      ),
    );
  }
}

class _pg4 extends StatefulWidget {
  const _pg4({super.key});

  @override
  State<_pg4> createState() => _Pg4State();
}

class _Pg4State extends State<_pg4> {
  @override
  Widget build(BuildContext context) {
    List<String> page4 = [
      'Harry Potter',
      'Interstellar',
      'Pulp Fiction',
      'Joker',
      'Fight Club',
    ];
    page4.shuffle();
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Is Your Movie any one of the below\n\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '\n\n${page4[0]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page4[1]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page4[2]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page4[3]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            '${page4[4]}\n',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                globals.key = globals.key + 4;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Result();
                }));
              },
              child: const Text('YES')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Result();
                }));
              },
              child: const Text('NO')),
        ]),
      ),
    );
  }
}

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    List<String> res = [
      "The Godfather",
      "Gladiator",
      "Spider-Man 2",
      "Memento",
      "Shawshank Redemption",
      "Harry Potter",
      "Interstellar",
      "Pulp Fiction",
      "Fight Club",
      "Joker",
    ];
    int k = globals.key > 0 ? globals.key - 1 : 10;
    String guessedValue =
        k > 9 || k < 0 ? "Please think of something \nnext time :)" : res[k];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'The movie you\'re thinking of is...\n',
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              '\n\n$guessedValue',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    k = 0;
                    globals.key = 0;
                    globals.movies.shuffle();
                  });
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: const Text('Try Again')),
          ],
        ),
      ),
    );
  }
}
