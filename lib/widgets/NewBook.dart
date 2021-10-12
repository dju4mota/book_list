import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewBook extends StatelessWidget {
  late String text ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Expanded(
        child: Column(
        children: [
          TextField(
              onChanged: (text){}
          ),
        ],
      ),
    ));
  }
}
