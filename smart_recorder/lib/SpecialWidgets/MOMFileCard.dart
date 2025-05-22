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
      child:Container(
          height: 100,
          width: width *.95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 200, 230, 244),
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
                  Text(fileName!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
                  Text(date!, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                ]
              )
            ],
          ),
        )

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
class AddMOMButton extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: (){print("Add new MOM");}, 
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 200, 230, 244),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(
            color: Color.fromARGB(132, 0, 0, 0),
            width: 2,
          ),
        ),
      ),
    child: Container(
        width: width *.8,
        height: 100,
        child:Icon(Icons.add, size:30,color:Colors.black)
        )
    );
  }
}