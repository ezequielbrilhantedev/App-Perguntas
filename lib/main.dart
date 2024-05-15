import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
              backgroundColor: Color.fromRGBO(69, 71, 238, 0.992),
            ),
            body: Text('Olá Flutter ')));
  }
}
