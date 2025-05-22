import 'package:flutter/material.dart';

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
          ),
          child: SingleChildScrollView(
            child: Column(
            children:[
              _NameField(_fileController, 'Enter name of the file'),
              const SizedBox(height: 20),
              _DateField(_dateController, 'dd/mm/yyyy'),
              const SizedBox(height: 200),
              _TimeField(_timeController, 'hh:mm'),
              const SizedBox(height: 250),
              _ChairField(_chairpersonController, 'Name of Chairperson'),
              const SizedBox(height: 300),
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
