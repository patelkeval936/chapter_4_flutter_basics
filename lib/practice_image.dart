import 'dart:io';

import 'package:flutter/material.dart';

main(){
  runApp(Practice2());
}

class Practice2 extends StatefulWidget {
  const Practice2({Key? key}) : super(key: key);

  @override
  State<Practice2> createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(

          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/background.jpeg',fit: BoxFit.cover,height: 200,width: 200,)
          ],
        ),
      ),
    );
  }
}
