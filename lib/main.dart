// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(TicTacToeApp());

// class TicTacToeApp extends StatelessWidget {
//   const TicTacToeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TicTacToeGame(),
//     );
//   }
// }

// class TicTacToeGame extends StatefulWidget {
//   const TicTacToeGame({super.key});

//   @override
//   _TicTacToeGameState createState() => _TicTacToeGameState();
// }

// class _TicTacToeGameState extends State<TicTacToeGame> {
//   List<String> board = List.filled(9, '');
//   String currentPlayer = 'X';
//   String winner = '';

//   void resetGame() {
//     setState(() {
//       board = List.filled(9, '');
//       currentPlayer = 'X';
//       winner = '';
//     });
//   }

//   void handleTap(int index) {
//     if (board[index] != '' || winner != '') return;

//     setState(() {
//       board[index] = currentPlayer;
//       if (checkWinner()) {
//         winner = currentPlayer;
//       } else if (!board.contains('')) {
//         winner = 'Draw';
//       } else {
//         currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
//       }
//     });
//   }

//   bool checkWinner() {
//     List<List<int>> winningCombinations = [
//       [0, 1, 2],
//       [3, 4, 5],
//       [6, 7, 8],
//       [0, 3, 6],
//       [1, 4, 7],
//       [2, 5, 8],
//       [0, 4, 8],
//       [2, 4, 6],
//     ];

//     for (var combo in winningCombinations) {
//       if (board[combo[0]] != '' &&
//           board[combo[0]] == board[combo[1]] &&
//           board[combo[0]] == board[combo[2]]) {
//         return true;
//       }
//     }
//     return false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tic Tac Toe'),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 4.0,
//                 mainAxisSpacing: 4.0,
//                 childAspectRatio: 1.0,
//               ),
//               itemCount: 9,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () => handleTap(index),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.blue[50],
//                       border: Border.all(color: Colors.blue),
//                     ),
//                     child: Center(
//                       child: Text(
//                         board[index],
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: board[index] == 'X' ? Colors.red : Colors.blue,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             winner.isNotEmpty
//                 ? winner == 'Draw'
//                     ? 'It\'s a Draw!'
//                     : '$winner Wins!'
//                 : 'Player $currentPlayer\'s Turn',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: resetGame,
//             child: Text('Reset Game'),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';


void main() => runApp(TicTacToeApp());

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the logo
            Image.asset(
              'assets/logo.jpeg',
              height: 200, // Set the logo size
              width: 200, // Set the logo size
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Display a welcome text
            Text(
              'Welcome to Tic Tac Toe!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Button to navigate to the Tic Tac Toe game screen
            ElevatedButton(
              onPressed: () {
                // Navigate to the TicTacToeGame screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TicTacToeGame()),
                );
              },
              child: Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}

class TicTacToeGame extends StatefulWidget {
  const TicTacToeGame({super.key});

  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  List<String> board = List.filled(9, '');
  String currentPlayer = 'X';
  String winner = '';

  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      currentPlayer = 'X';
      winner = '';
    });
  }

  void handleTap(int index) {
    if (board[index] != '' || winner != '') return;

    setState(() {
      board[index] = currentPlayer;
      if (checkWinner()) {
        winner = currentPlayer;
      } else if (!board.contains('')) {
        winner = 'Draw';
      } else {
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      }
    });
  }

  bool checkWinner() {
    List<List<int>> winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combo in winningCombinations) {
      if (board[combo[0]] != '' &&
          board[combo[0]] == board[combo[1]] &&
          board[combo[0]] == board[combo[2]]) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 1.0,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => handleTap(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Center(
                      child: Text(
                        board[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: board[index] == 'X' ? Colors.red : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            winner.isNotEmpty
                ? winner == 'Draw'
                    ? 'It\'s a Draw!'
                    : '$winner Wins!'
                : 'Player $currentPlayer\'s Turn',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: resetGame,
            child: Text('Reset Game'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
