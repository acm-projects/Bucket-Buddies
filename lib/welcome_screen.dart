import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';


class  WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF083939),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: Image.asset('images/BucketBuddiesLogo.png'),
                height: 400.0,
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
              height: 48.0,
            ),Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Color(0xFF19ADAD),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    //go to Login screen
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                    style:
                    TextStyle(
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Color(0xFF19ADAD),
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Go to Sign Up screen.
                    Navigator.pushNamed(context, SignUpScreen.id);
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
