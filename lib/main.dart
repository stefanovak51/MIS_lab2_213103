import 'package:flutter/material.dart';
import 'package:lab2and3/screens/home.dart';
import 'package:lab2and3/screens/list_joke_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      initialRoute: '/',
      routes: {
        '/' : (context) => MainScreen(),
        '/details' : (context) => const JokeListScreen(),
        //'/randomJoke': (context) => RandomJokeScreen(),
      },
    );
  }
}
