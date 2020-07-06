import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megahack3/CadastroStep1.dart';

class TipoCadastro extends StatelessWidget {
  final _keyScaffold = GlobalKey<ScaffoldState>();
  TipoCadastro({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyScaffold,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Como você gostaria de \nse cadastrar?',
              style: TextStyle(
                fontFamily: 'Segoe Print',
                fontSize: 20,
                color: const Color(0xff302f2f),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            _criarBotao(
              'Restaurante',
              () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => CadastroStep1(),
                ),
              ),
            ),
            SizedBox(height: 10),
            _criarBotao(
              'Fornecedor',
              () => _keyScaffold.currentState.showSnackBar(
                SnackBar(
                  content: Text('Não implementado'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton _criarBotao(String texto, Function onPressed) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.amber,
      height: 50.0,
      elevation: 2.0,
      child: Text(
        texto,
        style: TextStyle(
          fontFamily: 'Segoe Print',
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
