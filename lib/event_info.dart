import 'package:flutter/material.dart';

class EventInfo extends StatefulWidget {

  static const String id = 'event_info';

  @override
  State<EventInfo> createState() => _EventInfoState();
}

class _EventInfoState extends State<EventInfo> {
  String enteredEventName = '';
  String enteredEventDescription = '';

  var returnedInfo = new Map();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF083939),
      backgroundColor: Color(0xffb2ffff),
      appBar: AppBar(
        title: Text('Enter Event Info'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'LatoRegular',
          fontSize: 25.0,
        ),
        backgroundColor: Color(0xFF19ADAD),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Enter the name of the event',
              style: TextStyle(
                color: Color(0xFF19ADAD),
                fontFamily: 'LatoRegular',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              style: TextStyle(
                color: Color(0xFF083939),
              ),
              decoration: InputDecoration(
                //might want to create InputDecoration as a constant later on to modularize code
                filled: true,
                fillColor: Colors.white,
                hintText: 'Event Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LatoRegular',
                  fontSize: 17.0,
                ),
              ),
              onChanged: (value){
                enteredEventName = value;
                returnedInfo [ 'eventTitle' ] = enteredEventName;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Type out a description of the event',
              style: TextStyle(
                color: Color(0xFF19ADAD),
                fontFamily: 'LatoRegular',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              style: TextStyle(
                color: Color(0xFF083939),
              ),
              decoration: InputDecoration(
                //might want to create InputDecoration as a constant later on to modularize code
                filled: true,
                fillColor: Colors.white,
                hintText: 'Event Description',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LatoRegular',
                  fontSize: 17.0,
                ),
              ),
              onChanged: (value){
                enteredEventDescription = value;
                returnedInfo [ 'eventDesc' ] = enteredEventDescription;

              },
            ),
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Color(0xFF19ADAD),
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Go back to bucketlist screen.
                    Navigator.pop(context, returnedInfo);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Create Group',
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
          ],
        ),
      ),
    );
  }
}
