import 'package:flutter/material.dart';
import 'package:smart_recorder/SpecialWidgets/MOMFileCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text("Home Page",textAlign: TextAlign.start,),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 209, 247, 251),
      ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
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
              AddMOMButton()
            ],
          ),
        ],
      )
    );
  }
}

