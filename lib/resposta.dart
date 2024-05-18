import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelected;

  Resposta(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onSelected,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, foregroundColor: Colors.white),
      child: Text(texto),
    );
  }
}
