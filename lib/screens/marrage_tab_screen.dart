import 'package:flutter/material.dart';

class MarrageTabScreen extends StatefulWidget {
  const MarrageTabScreen({super.key});

  @override
  State<MarrageTabScreen> createState() => _MarrageTabScreenState();
}

class _MarrageTabScreenState extends State<MarrageTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Marriage',
              style: TextStyle(
                color: const Color.fromARGB(255, 92, 130, 211),
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(115, 218, 96, 96),
                    ),
                    width: 200,
                    child: Image.asset(
                      'asset/image/v3.png', // Ensure this path is correct in pubspec.yaml
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Marriage report life prediction',
            style: TextStyle(
              color: const Color.fromARGB(255, 92, 130, 211),
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
