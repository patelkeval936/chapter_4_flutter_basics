import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello World",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        // primary: true,
        title: const Text('Hello World',textAlign: TextAlign.center,style: TextStyle(),),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.add,
      //     size: 30,
      //     color: Colors.white,
      //     shadows: [Shadow(color: Colors.black, offset: Offset.fromDirection(0, 2), blurRadius: 1)],
      //   ),
      // ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(image: AssetImage('assets/background.jpeg'),fit: BoxFit.cover)
      //   ),
      // ),

      body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(
                    'h',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                      wordSpacing: 10,
                      textBaseline: TextBaseline.ideographic,
                      height: 2,
                      shadows: [Shadow(color: Colors.black,offset: Offset(3, 3),blurRadius: 10)],
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.orangeAccent,
                    ),
                    // softWrap: true, strutStyle: StrutStyle(),


                  ),

                  Container(
                    width: 200,
                    child: Text(
                      'ello world app ',
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 10,
                          wordSpacing: 10,
                          textBaseline: TextBaseline.ideographic,
                          height: 2,
                          shadows: [Shadow(color: Colors.black,offset: Offset(3, 3),blurRadius: 10)],
                          // decoration: TextDecoration.overline
                        overflow: TextOverflow.ellipsis
                      ),
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: 180,
              //   child: Icon(
              //     Icons.add,
              //     size: 200,
              //     color: Colors.blue,
              //     fill: 0.5,
              //     weight: 50,
              //     opticalSize: 50,
              //     semanticLabel: 'add button',
              //     // shadows: [
              //     //   Shadow(color: Colors.pinkAccent, offset: Offset.fromDirection(0.2, 1), blurRadius: 50),
              //     //   Shadow(color: Colors.greenAccent, offset: Offset.fromDirection(0.1, 2), blurRadius: 100)
              //     // ],
              //   ),
              // ),
              // Container(
              //     width: 20,
              //     child: Placeholder(
              //       fallbackHeight: 20,
              //     ))
            ],
          )),
    );
  }
}
