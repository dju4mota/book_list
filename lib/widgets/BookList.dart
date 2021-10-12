import 'package:book_list/models/Book.dart';
import 'package:book_list/models/BookItem.dart';
import 'package:book_list/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  @override
  State<BookList> createState() => BookListState();
}

class BookListState extends State<BookList> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 200.0,
        child: ListView.builder(
            itemCount: Home.bookList.length,
            padding: const EdgeInsets.all(8),
            itemBuilder: (BuildContext context, int index) {
              return BookItem(Home.bookList[index]);
            }),
      ),
    );
  }
}
