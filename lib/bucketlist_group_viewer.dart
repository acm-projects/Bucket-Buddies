import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}