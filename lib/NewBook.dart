import 'package:book_list/Book.dart';
import 'package:flutter/material.dart';

class NewBook extends StatefulWidget {
  @override
  _NewBookState createState() => _NewBookState();

  Function add;
  NewBook({required this.add});
}

class _NewBookState extends State<NewBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Book",
        ),
      ),
      body: Form(
        child: ElevatedButton(
          child: Text("Aperta"),
          onPressed: () {
            widget.add(Book("Harry Potter", "200", "9.5"));
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
