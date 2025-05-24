import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_gemini/flutter_gemini.dart';

Future<String> sendData(String date,String time,String chairperson,String attendees,String transcription)async{
  final url=Uri.parse('http://192.168.0.2:5000/getMOM');
  final response=await http.post(url,headers: {
    'Content-Type':'application/json',
  },body:json.encode({
    'date':date,
    'time':time,
    'attendees':attendees,
    'chairperson':chairperson,
    'transcription':transcription,
  }));
  if (response.statusCode == 200) {
     // Backend response as a string
    print('Success');
  } else {
    print('Error: ${response.statusCode}');
  }
  Map<String, dynamic> data = jsonDecode(response.body);
  String mom = data['mom'];
  return mom;
}



