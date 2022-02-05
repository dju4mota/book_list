import 'package:flutter/material.dart';

import 'Model/Book.dart';
import 'Screen/NewBook.dart';
import 'Widgets/List.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Book> bookList = [Book(titulo: "Nome do Vento", numeroPaginas: "767", nota: "10")];

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
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 234, 154, 98),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 236, 218),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 234, 154, 98),
          elevation: 0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 69, 130, 164),
          elevation: 0,
        ),
//        fontFamily: "Ubuntu",
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(13)),
            backgroundColor: MaterialStateProperty.all(
              Color.fromARGB(255, 69, 130, 164),
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BookList"),
        ),
        body: BookList(
          delete: delete,
          bookList: bookList,
        ),
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
