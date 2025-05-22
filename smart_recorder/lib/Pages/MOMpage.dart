import 'package:flutter/material.dart';

class MomPage extends StatelessWidget {
  const MomPage({super.key});
  @override
    Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFB9E6FF),
      body: Center(
        child: Container(
          height: screenHeight * 0.9,
          width: screenWidth * 0.8,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF5C95FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            //center and Heading of the page in column
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Name of the File',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'This is the MoM page',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}





