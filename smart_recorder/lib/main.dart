import 'package:smart_recorder/Pages/MOMpage.dart';
import 'package:flutter/material.dart';
import 'Pages/homepage.dart';
import 'Pages/MOMGenerationpage.dart';

import 'Functionality/MOMGeneration.dart';

void main() {
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MomPage(),
    );
  }
}

