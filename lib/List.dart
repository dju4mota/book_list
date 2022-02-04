import 'package:flutter/material.dart';

import 'BookCard.dart';

class BookList extends StatefulWidget {
  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  List<String> bookList = ["Nome do vento", "Harry Potter"];

  void delete(int index) {
    setState(() {
      bookList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return BookCard(
            titulo: bookList[index],
            function: delete,
            id: index,
          );
        },
        itemCount: bookList.length,
      ),
    );
  }
}
