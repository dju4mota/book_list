import 'package:flutter/material.dart';

import '../Model/Book.dart';
import 'BookCard.dart';

class BookList extends StatefulWidget {
  @override
  _BookListState createState() => _BookListState();
  List<Book> bookList;
  Function delete;
  BookList({required this.delete, required this.bookList});
}

class _BookListState extends State<BookList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return BookCard(
            bk: widget.bookList[index],
            function: widget.delete,
            id: index,
          );
        },
        itemCount: widget.bookList.length,
      ),
    );
  }
}
