// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/car.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white, //background
                  foregroundColor: Colors.red, //foreground or text color
                  // primary Can't be used when setting onPressed to null
                  disabledForegroundColor: Colors.blue,
                  elevation: 10,
                  shadowColor: Colors.blueAccent.shade100,
                ),
                onPressed: () => print(
                    'Short Press!'), // if set to null, button becomes inactive
                onLongPress: () => print('Long Press!'),
                child: const Text('Text Button'),
              ),
              ElevatedButton(
                // Adds background
                style: ElevatedButton.styleFrom(
                  //onPrimary: Colors.lightBlueAccent, //foreground
                  disabledForegroundColor: Colors.white,
                  foregroundColor: Colors.black, //background
                ),
                onPressed: null, //() => print('Short Press!'),
                onLongPress: null, //() => print('Long Press!'),
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                // Adds borders, Shows visible borders on white bg
                style: OutlinedButton.styleFrom(
                  //backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.yellow,
                  side: const BorderSide(width: 2, color: Colors.green),
                  //onSurface: Colors.red, //Affects the text color alone
                ),
                onPressed: () => print('Short Press!'),
                onLongPress: () => print('Long Press!'),
                child: const Text('Outlined Button'),
              )
            ],
          ),
        ),
      );
}
