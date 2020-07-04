import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:megahack3/CadastroStep3.dart';
import 'package:megahack3/util/globais.dart';
import 'package:provider/provider.dart';

class CadastroStep2 extends StatelessWidget {
  final _checkBoxValue = true;

  @override
  Widget build(BuildContext context) {
    final tiposCozinha =
        Provider.of<Globais>(context, listen: false).tiposCozinha;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Tipo de comida'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: tiposCozinha.length,
              itemBuilder: (context, index) {
                return TipoCozinha(
                  checkBoxValue: _checkBoxValue,
                  text: tiposCozinha[index].nome,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CadastroStep3(),
                ),
              ],
              child: Container(
                alignment: Alignment.center,
                width: 320.0,
                height: 46.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.amber),
                child: Text(
                  'Avançar',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TipoCozinha extends StatelessWidget {
  const TipoCozinha({
    Key key,
    @required bool checkBoxValue,
    @required String text,
  })  : _checkBoxValue = checkBoxValue,
        _text = text,
        super(key: key);

  final bool _checkBoxValue;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Checkbox(
        value: _checkBoxValue,
        activeColor: Colors.green,
        onChanged: null,
      ),
      Text(_text),
    ]);
  }
}
