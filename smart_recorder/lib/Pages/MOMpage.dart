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
              Stack(
                children: [
                  // Outline
                  Text(
                    'Name of the File',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  // Fill
                  Text(
                    'Name of the File',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF87575),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: screenHeight * 0.75,
                width: screenWidth * 0.75,
                decoration: BoxDecoration(
                  color: Color(0xFFB9E6FF),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    "Generated MoM",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffF87575),
                    ),
                  ),
                )
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                    width: screenHeight * 0.05,
                    child: ElevatedButton(// Save button
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF87575),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        // Save button code here
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.save,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                    width: screenHeight * 0.05,
                    child: ElevatedButton(// Share button
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF87575),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {
                        // Share button code here
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}





