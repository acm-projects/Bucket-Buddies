import 'package:bucket_buddies_frontend/home_screen.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'group_info.dart';
import 'bucketlist_group_viewer.dart';

void main() {
  runApp(const BucketBuddies());
}

class BucketBuddies extends StatelessWidget {
  const BucketBuddies({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith( //creating text theme for the whole app
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'AcmeRegular',
          ),
        ),
      ),
      //creating map for navigating pages
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(groupName: '',),
        GroupInfo.id: (context) => GroupInfo(),
        BucketListGroupViewer.id: (context) => BucketListGroupViewer(),
      },
    );
  }
}

