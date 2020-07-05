import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:megahack3/dao/restaurante_dao.dart';
import 'package:megahack3/model/restaurante_model.dart';
import './CadastroStep2.dart';

class CadastroStep1 extends StatelessWidget {
  final _keyScaffold = GlobalKey<ScaffoldState>();
  final _keyForm = GlobalKey<FormState>();
  final _mascaraCnpj = MaskTextInputFormatter(mask: '##.###.###/####-##');
  final _mascaraContato = MaskTextInputFormatter(mask: '(##) ####-####');
  final _restaurante = RestauranteModel();

  CadastroStep1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyScaffold,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Cadastro'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _keyForm,
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [_mascaraCnpj],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'CNPJ',
                ),
                validator: (_) {
                  if (!_mascaraCnpj.isFill()) {
                    return 'Preencha o CNPJ completo';
                  }
                  return null;
                },
                onSaved: (_) {
                  _restaurante.cnpj = _mascaraCnpj.getUnmaskedText();
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Razão Social',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha a Razão Social';
                  }
                  return null;
                },
                onSaved: (value) {
                  _restaurante.razaoSocial = value;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha o email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _restaurante.email = value;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [_mascaraContato],
                decoration: InputDecoration(
                  labelText: 'Contato',
                ),
                validator: (_) {
                  if (!_mascaraContato.isFill()) {
                    return 'Preencha o número do contato completo';
                  }
                  return null;
                },
                onSaved: (_) {
                  _restaurante.contato = _mascaraContato.getUnmaskedText();
                },
              ),
              SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }

  _submit() {
//    if (!_keyForm.currentState.validate()) {
//      return;
//    }

    _keyForm.currentState.save();
    Navigator.of(_keyScaffold.currentContext).push(
      MaterialPageRoute(
        builder: (_) => CadastroStep2(),
        settings: RouteSettings(
          arguments: {'restaurante': _restaurante},
        ),
      ),
    );
  }
}
