import 'package:book_list/List.dart';
import 'package:book_list/NewBook.dart';
import 'package:flutter/material.dart';

import 'Book.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Book> bookList = [Book("Nome do Vento", 767, 10), Book("Ruff Ghanor", 397, 9.0)];

  void add(Book bk) {
    setState(() {
      bookList.add(bk);
    });
  }

  void delete(int index) {
    setState(() {
      bookList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book List",
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BookList"),
        ),
        body: BookList(
          delete: delete,
          bookList: bookList,
        ),
        backgroundColor: Colors.blueGrey,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewBook(
                  add: add,
                ),
              ),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
