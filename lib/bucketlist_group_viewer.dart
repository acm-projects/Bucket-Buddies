import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ffem = 1.0; // This represents the font size scaling factor
    double fem = 1.0;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Top section with title
            Container(
              color: const Color(0xff51A7A7),
              padding: EdgeInsets.fromLTRB(25 * fem, 56 * fem, 25 * fem, 0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bucket List",
                      style: TextStyle(
                        fontFamily: 'Baloo',
                        fontSize: 36 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem,
                        color: const Color(0xffF5F5F5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Body content
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(25 * fem, 25 * fem, 25 * fem, 0),
                  color: const Color(0xffF5F5F5),
                  // Change the background color if needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildSection("Recently Added", ffem, fem),
                      const SizedBox(height: 20),
                      // Add some space between sections
                      buildSection("Upcoming", ffem, fem),
                      const SizedBox(height: 20),
                      // Add some space between sections
                      buildSection("Memories", ffem, fem),
                    ],
                  ),
                ),
              ),
            ),
            // Bottom navbar
            Container(
              color: const Color(0xff51A7A7),
              padding: EdgeInsets.fromLTRB(
                  25 * fem, 25 * fem, 25 * fem, 25 * fem),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.search),
                  Icon(Icons.notifications),
                  Icon(Icons.settings),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, double ffem, double fem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Baloo',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.5 * ffem,
                  color: const Color(0xff51A7A7),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 0),
        const Divider(color: Color(0xff51A7A7),
          thickness: 3,
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: 94,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            // Increment the number of boxes when the user enters photos
            itemBuilder: (BuildContext context,
                int index) { // int index is a temporary variable
              return Container(
                decoration: BoxDecoration(
                  //border: Border.all(color: const Color(0xff61a2b1), width: 2), // optional border on event containers.
                  // Set the border width here
                  color: const Color(0xff18475B), // Could be a placeholder and either replaced with the thumbnail image itself or the thumbnail image with this over it as a gradient fading out from bottom to top
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                margin: const EdgeInsets.only(right: 10),
                width: 110,
                height: 150,
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      bottom: 4,
                      child: Text('Event $index', // Placeholder code for the event titles
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF5F5F5),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}