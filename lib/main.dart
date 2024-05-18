import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'repostas': ['Preto', 'Vermelho', 'Branco', 'Azul']
      },
      {
        'texto': 'Qual é o seu animal favorita?',
        'repostas': ['Cachorro', 'Gato', 'Leão', 'Tigre']
      },
      {
        'texto': 'Qual é sua linguagem de programação favorita?',
        'repostas': ['JavaScript', 'Dart', 'Python', 'Java']
      },
    ];

    // final respostas = [
    //   {'text': 'Resposta 1'},
    //   {'text': 'Resposta 2'},
    //   {'text': 'Resposta 3'},
    // ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Perguntas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: const Color.fromRGBO(69, 71, 238, 0.992),
            ),
            body: Column(
              children: <Widget>[
                Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
                Resposta('Resposta 1', _responder),
                Resposta('Resposta 2', _responder),
                Resposta('Resposta 3', _responder),
              ],
            )));
  }
}

/*
for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }
*/
class PerguntaApp extends StatefulWidget {
  @override
  createState() {
    return _PerguntaAppState();
  }
}
