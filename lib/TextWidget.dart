import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  final String quote;

  TextWidget(this.quote);
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child:
      Text(quote,
           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)
           ,)
    );
  }
}