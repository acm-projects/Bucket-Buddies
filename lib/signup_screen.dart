import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  //variables to store user input in sign up page text fields
  String userName = '';
  String userEmail = '';
  String userPassword = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF083939),
      appBar: AppBar(
        title: Text('Sign Up'),
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
              height: 200.0,
            ),
            Text(
              ' Bucket Buddies',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'LuckiestGuy',
                fontSize: 50.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Create Your Account',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'LatoRegular',
                fontSize: 25.0,
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
                //might want to craete this as a constant later on
                filled: true,
                fillColor: Colors.white,
                hintText: 'Name',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LatoRegular',
                  fontSize: 17.0,
                ),
              ),
              onChanged: (value){
                userName = value; //assign entered name to userName variable
                //print(name);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(
                color: Color(0xFF083939),
              ),
              decoration: InputDecoration(
                //might want to create InputDecoartion as a constant later on to modularize code
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LatoRegular',
                  fontSize: 17.0,
                ),
              ),
              onChanged: (value){
                userEmail = value; //assign entered email to userEmail variable
                //print(userEmail);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(
                color: Color(0xFF083939),
              ),
              decoration: InputDecoration(
                //might want to craete this as a constant later on
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LatoRegular',
                  fontSize: 17.0,
                ),
              ),
              onChanged: (value){
                userPassword = value; //assign entered password to userPassword variable
                //print(userPassword);
              },
            ),
          ],
        ),
      ),
    );
  }
}
