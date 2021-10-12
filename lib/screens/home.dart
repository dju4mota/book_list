import 'package:book_list/models/Book.dart';
import 'package:book_list/widgets/BookList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static TextEditingController nomeController = TextEditingController();

  static List<Book> bookList = <Book>[
    Book("Nome do Vento", "Patrick Ruffus", 650, 10.0, "Arqueiro"),
    Book("Harry Potter 7", "J K Rolling", 600, 9.75, ""),
    Book("Senhor dos Anéis", "J R R Tolkien", 1200, 8.0, "Tolkien")
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void addBook() {
    setState(() {
      Home.bookList.insert(
          Home.bookList.length, Book(Home.nomeController.text, "", 0, 0, ""));
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: const Text('Lista dos livros'),
      ),
      backgroundColor: CupertinoColors.lightBackgroundGray,
      child: SafeArea(
        child: Column(
          children: [
            BookList(),
            Padding(
                padding: EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: Home.nomeController,
                )),
            CupertinoButton(
                child: Icon(Icons.add),
                onPressed: () {
                  addBook();
                })
          ],
        ),
      ),
    );
  }
}
