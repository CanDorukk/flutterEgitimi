import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;

  void randomNumber() {
    number = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade600,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber();
                  });
                },
                child: Image.asset('images/ball$number.png'))
          ],
        ),
      ),
    );
  }
}
