//import 'dart:ffi';

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() aoApertar;

  Resposta(this.texto, this.aoApertar);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        //
        color: Colors.deepPurple,
        onPressed: aoApertar,
        child: Text(
          texto,
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
