import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/BB_Splash_Screen.png'), // Replace 'your_splash_screen.png' with your image file path
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          // You can add additional widgets here if needed, such as a logo or loading indicator
          child: CircularProgressIndicator(), // Example: Displaying a CircularProgressIndicator
        ),
      ),
    );
  }
}
