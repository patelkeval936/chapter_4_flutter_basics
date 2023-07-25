import 'dart:io';

import 'package:flutter/material.dart';

main() {
  runApp(PracticeAppbar());
}

class PracticeAppbar extends StatefulWidget {
  const PracticeAppbar({Key? key}) : super(key: key);

  @override
  State<PracticeAppbar> createState() => _PracticeAppbarState();
}

class _PracticeAppbarState extends State<PracticeAppbar> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          title: Text('Hello World'),
          actions: [
            IconButton(
                onPressed: () {
                  print('increase');
                },
                icon: Icon(Icons.expand_more)),
            IconButton(
                onPressed: () {
                  print('decrease');
                },
                icon: Icon(Icons.expand_less)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                // Image.asset('assets/background.jpeg', fit: BoxFit.cover),
               ElevatedButton(onPressed: (){}, child: Text('Elevated Button'),style: ButtonStyle(
               ),
               ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){}, child: Text('Text Button')),
                SizedBox(height: 20,),
                OutlinedButton(onPressed: (){}, child: Text('Outlined Button')),
                SizedBox(height: 20,),
                Container(width: 100,child: Placeholder(color: Colors.grey,
                 fallbackWidth: 50,fallbackHeight: 50,))
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          tooltip: 'add button',
          splashColor: Colors.teal,
          focusColor: Colors.red,
          hoverColor: Colors.green,
          focusElevation: 100,
          hoverElevation: 0,
          onPressed: () {},
          label: Text('Add'),
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
