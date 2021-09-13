import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get frasePontuacao {
    if (pontuacao < 8) {
      return 'Fraco';
    } else if (pontuacao < 15) {
      return 'Médio';
    } else if (pontuacao < 20) {
      return 'Bom';
    } else
      return 'Nível Jedi';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(frasePontuacao, style: TextStyle(fontSize: 28)),
        ),
        ElevatedButton(
          child: Text('Reiniciar'),onPressed: quandoReiniciarQuestionario)
      ],
    );
  }
}
