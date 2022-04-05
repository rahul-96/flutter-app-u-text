import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

final Function selectHandler;

TextControl(this.selectHandler);
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: selectHandler,
      style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
      child: Text('New Quote'));
  }
}