//import 'package:bucket_buddies_frontend/home_screen.dart';
import 'package:flutter/material.dart';
//import 'welcome_screen.dart';
import 'bucketlist_group_viewer.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
//import 'group_info.dart';
import 'bottom_navbar.dart';
import 'profile.dart';

void main() {
  runApp(const BucketBuddies());

/*Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
  );*/
  //runApp(const MyApp());
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
      home: const BottomNav(),
      routes: {
        //WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        //HomeScreen.id: (context) => HomeScreen(groupName: '',),
        //GroupInfo.id: (context) => GroupInfo(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        BucketListGroupViewer.id: (context) => const BucketListGroupViewer(),
      },
    );
  }
}