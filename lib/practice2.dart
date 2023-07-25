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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            textBaseline: TextBaseline.alphabetic,
            verticalDirection: VerticalDirection.down,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red,height: 50,width: 200,
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('hello',style: TextStyle(fontSize: 20,textBaseline: TextBaseline.alphabetic),),
                  Text('hello',style: TextStyle(fontSize: 20,textBaseline: TextBaseline.alphabetic,),),
                  ],
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red,height: 50,width: 200,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
