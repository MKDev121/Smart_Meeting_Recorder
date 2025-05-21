import 'package:flutter/material.dart';
import 'package:smart_recorder/SpecialWidgets/MOMFileCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MOMFileCard(
                fileName: "Meeting 1",
                date: "2023-10-01",
                time: "10:00 AM",
                chairPerson: "John Doe"
              ),
              const SizedBox(height: 20),
              MOMFileCard(
                fileName: "Meeting 2",
                date: "2023-10-02",
                time: "11:00 AM",
                chairPerson: "Jane Smith"
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: (){}, child: const Text('Start Recording'))
            ],
          ),
        ],
      )
    );
  }
}

