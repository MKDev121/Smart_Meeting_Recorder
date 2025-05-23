import 'package:flutter/material.dart';

import 'package:smart_recorder/SpecialWidgets/MOMFileCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var addFileCard = AddMOMFileCard;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 230, 255),
      appBar: AppBar(
        title: Text(
          "Home Page",
          textAlign: TextAlign.start,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 31, 172, 248),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(children:momFileCards),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(0, 0, 0, 0),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                addFileCard("Meeting1", "02-10-2023", "9:00 PM", "Meet");
                print("Added MOM file card");
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 92, 149, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  color: Color.fromARGB(132, 0, 0, 0),
                  width: 2,
                ),
              ),
            ),
            child: Container(
              width: width * .8,
              height: 100,
              child: Icon(
                Icons.add,
                size: 50,
                color: textColor,
                weight: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


