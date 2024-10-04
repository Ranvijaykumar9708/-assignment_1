import 'dart:async';

import 'package:assignment_1/screens/home_screen.dart';
import 'package:assignment_1/widgets/circular_image_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _navigateIntoHomePage() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  @override
  void initState() {
    super.initState();
    _navigateIntoHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 133.0, left: 196.0),
            color: const Color(0xFF181824),
            height: 964,
            width: 430,
          ),
          Positioned(
            left: -77,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF7495E8), // Start color
                      Color(0xFF0C359E), // End color
                    ],
                  ),
                  shape: BoxShape.circle,
                  color: Colors.blueAccent),
              height: 237,
              width: 237,
            ),
          ),
          Positioned(
            left: -136.91,
            top: 256,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFCAD9FF)),
                shape: BoxShape.circle,
              ),
              width: 351.85,
              height: 351.85,
            ),
          ),
          Positioned(
            left: -180.91,
            top: 230,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFCAD9FF)),
                shape: BoxShape.circle,
              ),
              width: 480.0,
              height: 490.0,
            ),
          ),
          Positioned(
              left: 20,
              top: 180,
              child: getCircularWidget(
                  image: 'asset/image/S1.png', title: 'Business')),
          Positioned(
              left: 160,
              top: 230,
              child: getCircularWidget(
                  image: 'asset/image/S2.png', title: 'career')),
          Positioned(
              left: 260,
              top: 390,
              child: getCircularWidget(
                  image: 'asset/image/S3.png', title: 'Marriage')),
          Positioned(
              left: 210,
              top: 560,
              child: getCircularWidget(
                  image: 'asset/image/S4.png', title: 'Family')),
          Positioned(
              left: 32,
              top: 660,
              child: getCircularWidget(
                  image: 'asset/image/S5.png', title: 'Health')),
          Positioned(
            left: -250,
            top: 200,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFCAD9FF)),
                shape: BoxShape.circle,
              ),
              height: 540,
              width: 630,
            ),
          ),
        ],
      ),
    );
  }
}
