//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;
  final List<Map<String, Object>> respostas;

  const Questionario(
      {Key key,
      this.perguntaSelecionada,
      this.perguntas,
      this.responder,
      this.respostas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((e) {
          return Resposta(
            e['texto'],
            () => responder(e['nota']),
          );
        }).toList(),
      ],
    );
  }
}
