import 'package:flutter/material.dart';
import 'home_screen.dart';

class GroupInfo extends StatefulWidget {

  static const String id = 'group_info';

  @override
  State<GroupInfo> createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo> {

  String enteredGroupName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF083939),
      backgroundColor: Color(0xffb2ffff),
      appBar: AppBar(
        title: Text('Enter Group Info'),
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
              'Enter The Group\'s name',
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
                hintText: 'Group Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LatoRegular',
                  fontSize: 17.0,
                ),
              ),
              onChanged: (value){
                enteredGroupName = value; //assign entered email to userEmail variable
                //print(userEmail);
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
                    //Go to Home screen.
                    /*Navigator.pop(context, MaterialPageRoute(builder: (context) {
                      return HomeScreen(groupName: enteredGroupName,);
                    }));*/
                    Navigator.pop(context, enteredGroupName);
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
