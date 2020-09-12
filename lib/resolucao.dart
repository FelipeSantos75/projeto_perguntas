import 'package:flutter/material.dart';

class Resolucao extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;
  Resolucao(this.pontuacao, this.reiniciar);

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Eu te conheço? ';
    } else if (pontuacao < 20) {
      return 'Talvez  eu te Reconheça...';
    } else if (pontuacao < 30) {
      return 'Tão perto...';
    } else {
      return 'Finalmente!!! Um igual!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              fraseResultado,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            Text(
              'Sua pontuação foi $pontuacao!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            RaisedButton(
              onPressed: reiniciar,
              child: Text('Reiniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
