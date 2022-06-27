import 'package:flutter/material.dart';
import 'package:topbar/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Top Bar',
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
    home: const Home(),
  );
}


