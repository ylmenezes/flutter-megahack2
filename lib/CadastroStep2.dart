import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megahack3/CadastroStep3.dart';
import 'package:megahack3/model/restaurante_model.dart';
import 'package:megahack3/model/tipo_cozinha_model.dart';
import 'package:megahack3/util/globais.dart';
import 'package:megahack3/widget/popup.dart';
import 'package:provider/provider.dart';

import 'dao/restaurante_dao.dart';

class CadastroStep2 extends StatefulWidget {
  @override
  _CadastroStep2State createState() => _CadastroStep2State();
}

class _CadastroStep2State extends State<CadastroStep2> {
  final _keyScaffold = GlobalKey<ScaffoldState>();
  RestauranteModel _restaurante;
  List<TipoCozinhaModel> _tiposCozinha;
  Map<String, bool> _values = {};

  @override
  void initState() {
    super.initState();

    _tiposCozinha = Provider.of<Globais>(context, listen: false).tiposCozinha;

    _tiposCozinha.forEach((element) {
      _values[element.nome] = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    _restaurante = args['restaurante'];

    return Scaffold(
      key: _keyScaffold,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Tipo de comida'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _tiposCozinha.length,
              itemBuilder: (context, index) {
                return criarCheckbox(_tiposCozinha[index].nome);
              },
            ),
          ),
          GestureDetector(
            onTap: _submit,
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
          SizedBox(height: 20),
        ],
      ),
    );
  }

  CheckboxListTile criarCheckbox(String index) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(index),
      value: _values[index],
      activeColor: Colors.green,
      onChanged: (value) {
        setState(() {
          _values[index] = value;
        });
      },
    );
  }

  _submit() {
    if (!_values.containsValue(true)) {
      Popup().open(context, 'Aviso', 'Escolha pelo menos um tipo de cozinha.');
      return;
    }

    //limpa as cozinhas selecionados caso o usuario volte da tela seguinte
    _restaurante.listaIdTipoCozinha.clear();

    _values.forEach((key, value) {
      if (value) {
        final tipoCozinha =
            _tiposCozinha.firstWhere((element) => element.nome == key);
        _restaurante.listaIdTipoCozinha.add(tipoCozinha.id);
      }
    });

    new RestauranteDao().create(_restaurante);
    Navigator.of(_keyScaffold.currentContext).push(
      MaterialPageRoute(
        builder: (_) => CadastroStep3(),
        settings: RouteSettings(
          arguments: {'restaurante': _restaurante},
        ),
      ),
    );
  }
}
