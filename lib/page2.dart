import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  var name;
   Page2(this.name,{Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return
      WillPopScope(
      onWillPop: () async {
        print('hello');
        Navigator.of(context).pop('Keval Aamodra');
        return true;
      },
      child:
      Scaffold(
        appBar: AppBar(title: Text('Hello ${widget.name}'),
        automaticallyImplyLeading: true,),
        body: Container(
          width: double.infinity,
          height: 50,
          color: Colors.grey,
          child: Text('data',
          semanticsLabel: 'hello',
          textAlign: TextAlign.left,
            textDirection: TextDirection.rtl,
            style: TextStyle(),
          ),
        ),
      )
   );
  }
}
