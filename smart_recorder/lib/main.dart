import 'package:flutter/material.dart';
import 'Pages/homepage.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<< HEAD
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
=======
      home: HomePage(),
>>>>>>> 61a1d2be097fe99f6fa5e89f0dca20c9919fbf77
    );
  }
}
