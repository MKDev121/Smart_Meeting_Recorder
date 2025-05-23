import 'dart:convert';
import 'package:http/http.dart' as http;

String generateMOMPrompt(String date, String time, String chairperson, String transcription) {
  return """
  Generate a detailed and well-structured Minutes of Meeting (MOM) based on the following details:
  
  - **Date:** $date
  - **Time:** $time
  - **Chairperson:** $chairperson
  - **Meeting Transcription:** Below is the full transcription of the meeting:
  
  $transcription
  
  Extract key discussions, decisions made, action items, and next steps from the above transcription. Present the response in a professional format with clear sections.
  """;
}


Future<void> fetchAIResponse(String prompt) async {
  final response = await Gemini.chat(prompt);
  print('AI Response: ${response.text}');
}
