import 'package:book_list/models/Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book bk;

  BookItem(this.bk);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CupertinoColors.inactiveGray,
      margin: const EdgeInsets.all(7),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              bk.name,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              bk.rating.toString() + "/10",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
