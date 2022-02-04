import 'package:book_list/Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  @override
  State<BookCard> createState() => _BookCardState();
  final Book bk;
  Function function;
  final int id;
  BookCard({required this.bk, required this.function, required this.id});
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 330,
      child: Card(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 5, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Título: " + widget.bk.titulo,
                    style: TextStyle(fontSize: 23),
                  ),
                  Text(
                    "Páginas: " + widget.bk.numeroPaginas.toString(),
                    style: TextStyle(fontSize: 23),
                  ),
                  Text(
                    "Nota: " + widget.bk.nota.toString(),
                    style: TextStyle(fontSize: 23),
                  ),
                ],
              ),
              CupertinoButton(
                child: Icon(Icons.delete),
                padding: EdgeInsets.all(5),
                color: Colors.brown,
                onPressed: () => widget.function(widget.id),
              )
            ],
          ),
        ),
        color: Colors.grey,
      ),
    );
  }
}
