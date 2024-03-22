import 'package:bucket_buddies_frontend/home_screen.dart';
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
      //backgroundColor: Color(0xFF083939),
      backgroundColor: Color(0xffb2ffff),
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
                color: Color(0xFF19ADAD),
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
                    //for now, sign up will lead to home screen. Might want to add confirmation screen later
                    //to let user know they've successfully created an account
                    Navigator.pushNamed(context, HomeScreen.id);

                    //also, may need some sort of loading screen while we're waiting on backend to authenticate user
                    //(this applies to both the sign up and login pages)
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Sign Up',
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
