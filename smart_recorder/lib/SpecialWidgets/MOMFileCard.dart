import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';


Color? textColor=const Color.fromARGB(255, 248,117,117);

List<Widget> momFileCards=[
  const SizedBox(height: 20,),
  MOMFileCard(
    fileName: "Meeting 1",
    date: "2023-10-01",
    time: "10:00 AM",
    chairPerson: "John Doe"
  ),
  MOMFileCard(
    fileName: "Meeting 2",
    date: "2023-10-02",
    time: "11:00 AM",
    chairPerson: "Jane Smith"
  ),
];
void AddMOMFileCard(String fileName, String date, String time, String chairPerson){
    print("hehhe");
      momFileCards.add(
        MOMFileCard(
          fileName: fileName,
          date: date,
          time: time,
          chairPerson: chairPerson) );  
  return;
}


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
  
    //const Color? textColor=const Color.fromARGB(255, 248,117,117);
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Column(
      children:[GestureDetector(
        onTap:(){print("Tapped");},
        
        child:Container(
            height: 100,
            width: width *.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 92,149,255),
              border: Border.all(
                color: const Color.fromARGB(132, 0, 0, 0),
                width: .5,
              ),
            ),
            child: Row(
              children: [
                VideoThumbnail(),
                const SizedBox(width:20,),
                Column(
                  children:[
                    const SizedBox(height: 10,),
                    BorderedText(
                      strokeWidth: 1.5,
                      strokeColor: const Color.fromARGB(255, 0, 0, 0),
                      child:Text(fileName!, style:  TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: textColor),)
                      ),
                    const SizedBox(height: 5,),
                    BorderedText(
                      strokeWidth: 1.5,
                      strokeColor: const Color.fromARGB(255, 0, 0, 0),
                      child:Text(date!, style:  TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: textColor),)
                      )
                  ]
                )
              ],
            ),
            
          )

      ),
    const SizedBox(height: 10,),]
    );
  }
}
class VideoThumbnail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(
          color: const Color.fromARGB(132, 0, 0, 0),
          width: .5,
        ),
      ),
      child: const Icon(Icons.filter, size: 50, color: Colors.blue,),
    );
  }

}

