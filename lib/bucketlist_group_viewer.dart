import 'package:bucket_buddies_frontend/event_info.dart';
import 'package:flutter/material.dart';
import 'incomp_event_tile.dart';

class BucketListGroupViewer extends StatefulWidget {
  const BucketListGroupViewer({super.key});
  static const String id = 'bucketlist_group_viewer';

  @override
  State<BucketListGroupViewer> createState() => _BucketListGroupViewerState();
}

class _BucketListGroupViewerState extends State<BucketListGroupViewer> {

  String eventTitle = '';
  String eventDescription = '';

  var receivedInfo1 = new Map();


  List<incompEventTile> incompleteEvents = [];
  //this function creates an event and adds it to the incompleteEvents list.
  Future <void> createEvent() async {

    Object? receivedInfo = await Navigator.pushNamed(context, EventInfo.id);

    setState(() {
      receivedInfo1 = receivedInfo as Map;

      eventTitle = receivedInfo1['eventTitle'];
      eventDescription = receivedInfo1['eventDesc'];

      incompEventTile newIncompleteEvent = new incompEventTile(eventTitle, eventDescription);
      incompleteEvents.add(newIncompleteEvent);
      print(incompleteEvents.length);
    });
  }


  double ffem = 1.0; // This represents the font size scaling factor
  double fem = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(25 * fem, 25 * fem, 25 * fem, 0),
              color: const Color(0xffF5F5F5),
              // Change the background color if needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildIncompleteSection("Incomplete Events", ffem, fem),
                  const SizedBox(height: 20),
                  // Add some space between sections
                  buildCompleteSection("Completed Events", ffem, fem),
                  const SizedBox(height: 20),
                  // Add some space between sections
                  buildMemoriesSection("Memories", ffem, fem),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              color: Color(0xff51A7A7),
              borderRadius: BorderRadius.circular(30.0),
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {
                  createEvent();
                },
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  'Create New Event',
                  style:
                  TextStyle (
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'AcmeRegular',
                    fontSize: 27.0,
                  ),
                ),
              ),
            ),
          ),
          // TEMPORARY Bottom navbar
          SizedBox(
            height: 100.0,
          ),//need to create better method to move nav bar to bottom later
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
    );
  }

  Widget buildIncompleteSection(String title, double ffem, double fem) {
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
          /*child: ListView(
            scrollDirection: Axis.horizontal,
            children: incompleteEvents,
          ),*/
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: incompleteEvents.length,

            // Increment the number of boxes when the user enters photos
            itemBuilder: (BuildContext context,
                int index) { // int index is a temporary variable
                return incompleteEvents.elementAt(index);
            },
          ),
        ),
      ],
    );
  }

  Widget buildCompleteSection(String title, double ffem, double fem) {
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
        SizedBox( //////THIS SIZED BOX IS TEMPORARY  - WILL DELETE LATER////////
          height: 94,
        ),
        /*SizedBox(
          height: 94,
          /*child: ListView(
            scrollDirection: Axis.horizontal,
            children: incompleteEvents,
          ),*/
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: incompleteEvents.length,

            // Increment the number of boxes when the user enters photos
            itemBuilder: (BuildContext context,
                int index) { // int index is a temporary variable
              return incompleteEvents.elementAt(index);
            },
          ),
        ),*/
      ],
    );
  }

  Widget buildMemoriesSection(String title, double ffem, double fem) {
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
        SizedBox( //////THIS SIZED BOX IS TEMPOARRY  - WILL DELETE LATER////////
          height: 110,
        ),
        /*SizedBox(
          height: 94,
          /*child: ListView(
            scrollDirection: Axis.horizontal,
            children: incompleteEvents,
          ),*/
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: incompleteEvents.length,

            // Increment the number of boxes when the user enters photos
            itemBuilder: (BuildContext context,
                int index) { // int index is a temporary variable
              return incompleteEvents.elementAt(index);
            },
          ),
        ),*/
      ],
    );
  }
}