import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart' as validator;

import '../Model/Book.dart';

class NewBook extends StatefulWidget {
  @override
  _NewBookState createState() => _NewBookState();

  Function add;
  NewBook({required this.add});
}

class _NewBookState extends State<NewBook> {
  var bk = Book();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adicionar novo livro",
        ),
        backgroundColor: Color.fromARGB(255, 234, 154, 98),
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFieldCustom(
              label: "Titulo",
              icone: Icon(Icons.menu_book, color: Color.fromARGB(255, 69, 130, 164)),
              validator: (text) => text == null || text.isEmpty ? "Este campo não pode ser nulo" : null,
              onSaved: (text) => bk = bk.copyWith(titulo: text),
            ),
            TextFieldCustom(
              label: "Número de Páginas",
              icone: Icon(Icons.bookmark_border, color: Color.fromARGB(255, 69, 130, 164)),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Este campo não pode ser nulo";
                }
                if (!validator.isNumeric(text)) {
                  return "Este campo precisa conter apenas números";
                }
              },
              onSaved: (text) => bk = bk.copyWith(numeroPaginas: text),
            ),
            TextFieldCustom(
              label: "Nota",
              icone: Icon(Icons.star, color: Color.fromARGB(255, 69, 130, 164)),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Este campo não pode ser nulo";
                }
                if (!validator.isNumeric(text)) {
                  return "Este campo precisa conter apenas números";
                }
              },
              onSaved: (text) => bk = bk.copyWith(nota: text),
            ),
            ElevatedButton(
              child: Text("Salvar"),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  widget.add(bk);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  final String label;
  final Icon icone;
  final String? Function(String? text)? validator;
  final void Function(String? text)? onSaved;
  const TextFieldCustom({required this.label, required this.icone, this.validator, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: this.label,
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 69, 130, 164),
          ),
          prefixIcon: this.icone,
          focusColor: Color.fromARGB(255, 69, 130, 164),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 69, 130, 164),
            ),
          ),
        ),
      ),
    );
  }
}
