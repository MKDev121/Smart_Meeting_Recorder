import 'package:flutter/material.dart';
Color? textColor=const Color.fromARGB(255, 248,117,117);
class Momgenpage extends StatefulWidget {
  const Momgenpage({super.key});

  @override
  _MomgenpageState createState() => _MomgenpageState();
}

class _MomgenpageState extends State<Momgenpage> {
  final _fileController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _chairpersonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('Generate MOM'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
            children:[
              _NameField(_fileController, 'Enter name of the file'),
              const SizedBox(height: 200),
              _DateField(_dateController, 'dd/mm/yyyy'),
              const SizedBox(height: 20),
              _TimeField(_timeController, 'hh:mm'),
              const SizedBox(height: 20),
              _ChairField(_chairpersonController, 'Name of Chairperson'),
              const SizedBox(height: 50),
              ElevatedButton(onPressed: (){print("Added list");}, 
              style:ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 185, 230, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromARGB(132, 0, 0, 0),
                    width: 2,
                  ),
                ),
              ),
              child: Text("Add attendees list",style: TextStyle(color: textColor),)),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: (){print("Added list");}, 
              style:ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 185, 230, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromARGB(132, 0, 0, 0),
                    width: 2,
                  ),
                ),
              ),
              child: Text("Generate ",style: TextStyle(color: textColor),)),
              const SizedBox(height: 40),
              //Icon(Icons.upload, size: 64, color: Colors.white),
            ],
            ),
          ),
        ),
      ),
    );
  }

 Widget _NameField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
    );
  }
  Widget _DateField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
    );
  }
  Widget _TimeField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
    );
  }
  Widget _ChairField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
    );
  }
}