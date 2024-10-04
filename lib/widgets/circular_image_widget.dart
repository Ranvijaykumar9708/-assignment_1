import 'package:flutter/material.dart';

Widget getCircularWidget({required String image, required String title}) {
  return Row(
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 43, 68, 88),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: 62.0,
            height: 60.0,
            child: Image.asset(image),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        title,
        style: TextStyle(
            color: const Color.fromARGB(255, 68, 51, 143),
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}
