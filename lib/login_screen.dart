import 'package:flutter/material.dart';

//void main() => runApp(const LoginScreen());

class LoginScreen extends StatelessWidget {

  static const String id = "login_screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ffem = 1.0; // This represents the font size scaling factor
    double fem = 1.0;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: buildBody(ffem, fem),
        ),
      ),
    );
  }

  Widget buildBody(double ffem, double fem) {
    return Container(
      padding: EdgeInsets.fromLTRB(25 * fem, 126 * fem, 25 * fem, 263 * fem),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffb2ffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildSignInText(ffem),
          buildEmailContainer(ffem, fem),
          buildPasswordContainer(ffem, fem),
          buildForgotPasswordText(ffem, fem),
          buildLogInButton(ffem, fem),
          buildDontHaveAnAccount(ffem, fem),
        ],
      ),
    );
  }

  Widget buildSignInText(double ffem) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 210 * ffem, 43 * ffem),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 5 * ffem),
            child: Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 24 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2575 * ffem,
                color: const Color(0xff1e1e1e),
              ),
            ),
          ),
          Text(
            'Hello, Welcome Back!',
            style: TextStyle(
              fontFamily: 'Baloo',
              fontSize: 13 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.2575 * ffem,
              color: const Color(0xff1e1e1e),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEmailContainer(double ffem, double fem) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 24 * fem),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(3 * fem, 0, 0, 11 * fem),
            child: Text(
              'Email Address:',
              style: TextStyle(
                fontFamily: 'Baloo',
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2575 * ffem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                15 * fem, 12 * fem, 15 * fem, 12 * fem),
            width: double.infinity,
            height: 48 * fem,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff61a2b1), width: 2),
              // Set the border width here
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(10 * fem),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(2 * fem, 2 * fem, 0, 4 * fem),
              width: 130 * fem,
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2 * fem, 9.5 * fem, 0),
                    width: 20 * fem,
                    height: 16 * fem,
                    child: Image.asset(
                      'assets/images/BB_Email_Icon.png',
                      width: 20 * fem,
                      height: 16 * fem,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Enter your email',
                    style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575 * ffem,
                      color: const Color(0xffcacaca),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPasswordContainer(double ffem, double fem) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 8 * fem),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(3 * fem, 0, 0, 8 * fem),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Password:',
                    style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2575 * ffem,
                      color: const Color(0xff000000),
                    ),
                  ),
                  const TextSpan(
                    text: '',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 48 * fem,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  18 * fem, 14 * fem, 11 * fem, 12 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff61a2b1), width: 2),
                // Set the border width here
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 12 * fem, 0),
                    width: 18 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/images/BB_Password_Icon.png',
                      width: 18 * fem,
                      height: 20 * fem,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1.5, 120 * fem, 0 * fem),
                    child: Text(
                      'Enter your password',
                      style: TextStyle(
                        fontFamily: 'Baloo',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2575 * ffem,
                        color: const Color(0xffcacaca),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 22 * fem,
                    height: 22 * fem,
                    child: Image.asset(
                      'assets/images/BB_Hide_Password_Icon.png',
                      width: 22 * fem,
                      height: 22 * fem,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget buildForgotPasswordText(double ffem, double fem) {
    return Container(
      margin: EdgeInsets.fromLTRB(196 * fem, 0, 0, 112 * fem),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          fontFamily: 'Baloo',
          fontSize: 14 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.2575 * ffem,
          color: const Color(0xff46019f),
        ),
      ),
    );
  }

  Widget buildLogInButton(double ffem, double fem) {
    return Container(
      margin: EdgeInsets.fromLTRB(1 * fem, 0, 0, 0),
      width: 342 * fem,
      height: 50 * fem,
      decoration: BoxDecoration(
        color: const Color(0xff1ed2d2),
        borderRadius: BorderRadius.circular(34 * fem),
      ),
      child: Center(
        child: Text(
          'Log In',
          style: TextStyle(
            fontFamily: 'Baloo',
            fontSize: 14 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.2575 * ffem,
            color: const Color(0xffffffff),
          ),
        ),
      ),
    );
  }

  Widget buildDontHaveAnAccount(double ffem, double fem) {
    return Container(
      margin: EdgeInsets.fromLTRB(120 * fem, 10 * fem, 0, 0),
      width: 342 * fem,
      height: 50 * fem,
      child: Text(
        'New to Bucket Buddies? Sign Up!',
        style: TextStyle(
          fontFamily: 'Baloo',
          fontSize: 14 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.2575 * ffem,
          color: const Color(0xff46019f),
        ),
      ),
    );
  }
}
