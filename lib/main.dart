// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './App.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);
  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  var _quotesList = ['You will find it once you stop looking!',
                     'You are awesome today and will be tomorrow!',
                     'Ultimate happiness comes from the smallest of things',
                     'Why care about others mistakes when you haven\'t fixed yours'
                     ];

  var quoteIndex = 0;

  void _textControl(){
      print('hello testing!');
    
    if(quoteIndex<_quotesList.length - 1)
    setState(() {
      quoteIndex++;
    });
    else if(quoteIndex == 3){
      setState(() {
      quoteIndex = 0;
    });

    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Center(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              App(_quotesList[quoteIndex],_textControl),
              // Text('Hello!'),
              // ElevatedButton(onPressed: null,
              // child: Text('Submit'),
              //   ),
              ],
            )
        ,)
          ),
      );
  }
}