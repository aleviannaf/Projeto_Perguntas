import 'package:flutter/material.dart';



class Resposta extends StatelessWidget {
  final String texto;
  final void Function() _selecionado;
  

  Resposta(this.texto, this._selecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.green,
          //elevation: 20, //deixa mais vivo
          //shadowColor: Colors.red //deixa uma sombra
          
        ),
        child: Text(texto),
        onPressed: _selecionado,
      ),
    );
  }
}
