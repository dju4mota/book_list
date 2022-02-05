import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Book.dart';

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
          margin: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.fromLTRB(17, 10, 17, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Título: " + widget.bk.titulo,
                      style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 210,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Páginas: " + widget.bk.numeroPaginas.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Nota: " + widget.bk.nota.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CupertinoButton(
                  child: Icon(Icons.delete),
                  padding: EdgeInsets.all(5),
                  color: Color.fromARGB(255, 234, 98, 98),
                  onPressed: () => widget.function(widget.id),
                )
              ],
            ),
          ),
          color: Color.fromARGB(255, 165, 116, 69)),
    );
  }
}
