import 'package:ch10_2/views/screens/home_page.dart';
import 'package:ch10_2/views/screens/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'secondpage': (context) => const secondpage(),
      },
    );
  }
}
