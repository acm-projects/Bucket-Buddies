import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ffem = 1.0; // This represents the font size scaling factor
    double fem = 1.0;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
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
                          "Placeholder",
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
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: const Color(0xff51A7A7),
                width: MediaQuery.of(context).size.width,
                height: 94 * fem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/BB_Nav_Home.png'),
                    Image.asset('assets/images/BB_Nav_Calendar.png'),
                    Image.asset('assets/images/BB_Add_Group.png'),
                    Image.asset('assets/images/BB_Nav_Messages.png'),
                    Image.asset('assets/images/BB_Nav_Profile.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
