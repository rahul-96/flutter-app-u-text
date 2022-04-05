import 'package:flutter/material.dart';

import './TextWidget.dart';
import './TextControl.dart';

class App extends StatelessWidget {

  final Function _textControl;
  final String _quote;
  // const ({ Key? key }) : super(key: key);

  App(this._quote,this._textControl);

  @override
  Widget build(BuildContext context) {
    return Column( children: [
      Center(child: 
      Text('App',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.left
            ),
      ),

      TextWidget(_quote),
      TextControl(_textControl),
    ],

    );
  }
}