import 'package:flutter/material.dart';

import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resolucao.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var _nota = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor Favorita',
      'resposta': [
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 8},
        {'texto': 'Verde', 'nota': 6},
        {'texto': 'Branco', 'nota': 3},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito',
      'resposta': [
        {'texto': 'Gato', 'nota': 10},
        {'texto': 'Cachorro', 'nota': 9},
        {'texto': 'Coelho', 'nota': 2},
        {'texto': 'Macaco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu escritor favorito',
      'resposta': [
        {'texto': 'Lewis', 'nota': 10},
        {'texto': 'Tolkien', 'nota': 8},
        {'texto': 'Rowling', 'nota': 4},
        {'texto': 'Piper', 'nota': 7},
      ],
    },
  ];
  void _responder(int notas) {
    setState(() {
      perguntaSelecionada++;
      _nota += notas;
    });
    print(_nota);
  }

  void _reinicia() {
    setState(() {
      perguntaSelecionada = 0;
      _nota = 0;
    });
    print(_nota);
  }

  bool get tempergunta {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        tempergunta ? _perguntas[perguntaSelecionada]['resposta'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Perguntas',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: tempergunta
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: perguntaSelecionada,
                responder: _responder,
                respostas: respostas,
              )
            : Resolucao(_nota, _reinicia),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
