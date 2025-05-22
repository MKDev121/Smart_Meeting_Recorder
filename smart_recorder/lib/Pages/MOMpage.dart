import 'package:flutter/material.dart';

class MomPage extends StatelessWidget {
  const MomPage({super.key});
  @override
    Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFB9E6FF),
      appBar: AppBar(
        title:  Text("MoM Page",textAlign: TextAlign.start,),
        centerTitle: true,
        backgroundColor: Color(0xFFB9E6FF),
      ),
      body: Container(
        child: Text('This is the MoM page'),
        color: Color(0xFF5C95FF),
        height: 360,
        width: 720
      ),
    );
  }
}





