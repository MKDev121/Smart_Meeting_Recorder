import 'package:flutter/material.dart';

class MOMFileCard extends StatelessWidget{
  String? fileName;
  String? date;
  String? time;
  String? chairPerson;

  MOMFileCard({
    super.key,
    required this.fileName,
    required this.date,
    required this.time,
    required this.chairPerson
  });
  @override
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap:(){print("Tapped");},
      child:Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child:Container(
          height: 100,
          width: width * 0.8,
          color: Colors.lightBlue[100],
        
        ),
        
      )
    );
  }
}