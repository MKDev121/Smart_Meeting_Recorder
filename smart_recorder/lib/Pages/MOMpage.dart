import 'package:flutter/material.dart';

const String paragraph = '''
Games have been an integral part of human life for centuries, evolving from simple recreational activities to complex digital experiences. They serve various purposes, from entertainment and relaxation to skill development and social bonding. Outdoor sports enhance physical fitness, discipline, and teamwork, while board games sharpen cognitive abilities and encourage strategic thinking. Video games, on the other hand, offer immersive experiences, fostering creativity, problem-solving, and even reflex improvement.

Beyond mere entertainment, games teach valuable life lessons. They encourage perseverance, patience, and adaptability, allowing players to embrace challenges and find solutions. Multiplayer games promote collaboration, fostering friendships and a sense of community. Competitive gaming fuels determination, helping players strive for excellence, while casual gaming offers stress relief and enjoyment.

The cultural impact of games is profound, influencing arts, storytelling, and even education. Gamification has been integrated into learning systems, making education engaging and interactive. From childhood to adulthood, games remain a vital part of recreation and development, shaping individuals and bringing people together. Whether played solo or in groups, indoors or outdoors, games add excitement and meaning to life, reflecting the universal desire for fun, connection, and growth.
''';


class MomPage extends StatelessWidget {
  const MomPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                          child: const SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "paragraph",
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






