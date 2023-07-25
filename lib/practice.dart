import 'package:chapter_4_flutter_basics/page1.dart';
import 'package:chapter_4_flutter_basics/page2.dart';
import 'package:chapter_4_flutter_basics/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Practice());
}

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}



