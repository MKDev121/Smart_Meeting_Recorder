import 'package:flutter/material.dart';
import 'package:smart_recorder/Functionality/MOMGeneration.dart';
const String paragraph = """
Manager: Good morning, everyone. Let's start with our product discussion. The latest update has been deployed—any feedback?
Developer: The new UI improvements are great, but we noticed a minor bug in the checkout flow.
Designer: I agree. The user experience is smoother, but we might need to tweak the button placements.
Manager: Noted. Let's prioritize fixing the checkout issue. QA team, can you confirm the bug?
QA Lead: Yes, we've logged it. We'll run additional tests today.
Marketing Lead: Also, our latest campaign is driving more traffic. We should ensure the servers can handle the load.
DevOps Engineer: No worries, we've scaled up the infrastructure. Performance should be stable.
Manager: Great. Before we wrap up, any other office updates?
HR: Just a reminder—team-building event is scheduled for Friday. Please RSVP.
Manager: Sounds good! Thanks, everyone. Let's reconvene next week.
""";


class  MomPage extends StatefulWidget {
  const MomPage({super.key});

  @override
  State<MomPage> createState() => _MomPageState();
}

class _MomPageState extends State<MomPage> {
  bool momGen=true;
  String mom="";

  @override
  Widget build(BuildContext context) {
    if(momGen){
      sendData("02-10-2023", "9:00 PM", "Meet(Manager)", "Srajan(Developer),Priyansh(Designer),Dev(QA lead),Rudra(Dev ops)", paragraph)
      .then((response){
        setState(() {
          mom=response;
          momGen=false;
        });
      });


    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 114, 186, 224),
      body:Center( child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * .9,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C95FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                                  ..color = Colors.black,
                              ),
                            ),
                            // Fill
                            const Text(
                              'Name of the File',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF87575),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: screenHeight * 0.7,
                            maxWidth: screenWidth * 0.85,
                            minWidth: screenWidth * 0.85,
                            minHeight: screenHeight * 0.7,
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 253, 255, 185),
                          ),
                          child:  SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                mom,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF87575),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                // Save button logic
                              },
                              child: const Icon(Icons.save, color: Colors.black),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffF87575),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                // Share button logic
                              },
                              child: const Icon(Icons.share, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      ),
    );
  }
}






