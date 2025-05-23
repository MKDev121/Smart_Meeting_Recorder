import 'package:flutter/material.dart';
import 'Pages/homepage.dart';
import 'Pages/MOMGenerationpage.dart';
import 'package:smart_recorder/Pages/MOMpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Momgenpage(),
    );
  }
}
