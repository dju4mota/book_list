import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {
  @override
  State<BookCard> createState() => _BookCardState();
  final String titulo;
  Function function;
  final int id;
  BookCard({required this.titulo, required this.function, required this.id});
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 330,
      child: Card(
        child: Column(
          children: [
            Text(widget.titulo),
            CupertinoButton(
              child: Icon(Icons.delete),
              onPressed: () => widget.function(widget.id),
            )
          ],
        ),
        color: Colors.blueGrey,
      ),
    );
  }
}
