import 'package:flutter/cupertino.dart';

@immutable
class Book {
  final titulo;
  final numeroPaginas;
  final nota;

  Book({this.titulo = '', this.numeroPaginas = '', this.nota = ''});

  Book copyWith({
    String? titulo,
    String? numeroPaginas,
    String? nota,
  }) {
    return Book(
      titulo: titulo ?? this.titulo,
      nota: nota ?? this.nota,
      numeroPaginas: numeroPaginas ?? this.numeroPaginas,
    );
  }
}
