import 'package:book_list/List.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(),
      home: CupertinoPageScaffold(
        child: BookList(),
      ),
    );
  }
}
