import 'package:chapter_4_flutter_basics/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String title = 'go to second page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: false,
      appBar: AppBar(
        // primary: false,
        // title: Image.asset(
        //   'assets/background.jpeg',
        //   fit: BoxFit.cover,
        // ),
        title: Text('hello world'),
        leading: Icon(Icons.add),
        leadingWidth: 0,
        elevation: 0,
        // actions: [Icon(Icons.abc), Icon(Icons.abc), Icon(Icons.abc), Icon(Icons.abc), Icon(Icons.abc)],
        // automaticallyImplyLeading: ,
        // flexibleSpace: Image.asset('assets/background.jpeg',fit: BoxFit.cover,),
        // bottom: PreferredSize(child: Container(color: Colors.white,child: Text('hello')), preferredSize: Size(10, 20)),
        // toolbarHeight: 200,
      ),
      body:

      Container(
        decoration: BoxDecoration(),
        constraints: BoxConstraints(),
        clipBehavior: Clip.antiAlias,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(00.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'hello world',
                  style: TextStyle(
                      fontSize: 20,
                    height: 3
                  ),
                  // overflow: TextOverflow.visible,
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false, applyHeightToLastDescent: false),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.all(8.0),
                    height: 150,
                    width: 150,

                    // transform: Matrix4.rotationZ(0.1),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () async {
                        title = await  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2('Keval')));
                        print('$title');
                    },
                    child: Text('$title'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
