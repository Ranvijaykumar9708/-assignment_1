import 'package:assignment_1/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: SplashScreen());
  }
}
