import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:megahack3/CadastroStep2.dart';
import 'package:megahack3/model/restaurante_model.dart';
import 'package:megahack3/util/constantes.dart';
import 'package:megahack3/widget/text_form_field_padrao.dart';
import 'util/mascara_dinheiro.dart';

class CadastroStep1 extends StatelessWidget {
  final _keyScaffold = GlobalKey<ScaffoldState>();
  final _keyForm = GlobalKey<FormState>();
  final _mascaraCnpj = MaskTextInputFormatter(mask: kMascaraCnpj);
  final _mascaraCpf = MaskTextInputFormatter(mask: kMascaraCpf);
  final _restaurante = RestauranteModel();
  final _regexEmail = RegExp(kRegexEmail);

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
              TextFormFieldPadrao(
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                validator: (value) {
                  if (_regexEmail.allMatches(value).isEmpty) {
                    return 'Email inválido';
                  }
                  return null;
                },
                onSaved: (value) {
                  _restaurante.email = value;
                },
              ),
              SizedBox(height: 10),
              TextFormFieldPadrao(
                labelText: 'Senha',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                obscureText: true,
                validator: (value) {
                  if (value.length < 6) {
                    return 'A senha deve conter ao menos 6 caracteres';
                  }
                  return null;
                },
                onSaved: (value) {
                  _restaurante.senha = value;
                },
              ),
              SizedBox(height: 10),
              TextFormFieldPadrao(
                labelText: 'Nome da empresa',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha a nome da empresa';
                  }
                  return null;
                },
                onSaved: (value) {
                  _restaurante.nomeEmpresa = value;
                },
              ),
              SizedBox(height: 10),
              TextFormFieldPadrao(
                labelText: 'CNPJ',
                keyboardType: TextInputType.number,
                inputFormatters: [_mascaraCnpj],
                textInputAction: TextInputAction.next,
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
              SizedBox(height: 10),
              TextFormFieldPadrao(
                labelText: 'Proprietário responsável',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Preencha o nome do proprietário';
                  }
                  return null;
                },
                onSaved: (value) {
                  _restaurante.nomeProprietario = value;
                },
              ),
              SizedBox(height: 10),
              TextFormFieldPadrao(
                labelText: 'CPF do proprietário',
                keyboardType: TextInputType.number,
                inputFormatters: [_mascaraCpf],
                validator: (_) {
                  if (!_mascaraCpf.isFill()) {
                    return 'Preencha o CPF do proprietário';
                  }
                  return null;
                },
                onSaved: (_) {
                  _restaurante.cpfProprietario = _mascaraCpf.getUnmaskedText();
                },
              ),
              SizedBox(height: 10),
              TextFormFieldPadrao(
                inputFormatters: [MascaraDinheiro.mascaraDinheiro],
                keyboardType:
                TextInputType.numberWithOptions(decimal: true),
                labelText: 'Valor do negócio',
                validator: (value) {
                  if (value.isNotEmpty) {
                    try {
                      if (MascaraDinheiro.converterStringParaDinheiro(
                          value) <=
                          0) {
                        return 'Preencha o valor do negócio';
                      }
                      return null;
                    } catch (ex) {
                      return 'Valor inválido';
                    }
                  }
                  return null;
                },
                onSaved: (value) {
                  if (value.isEmpty) {
                    _restaurante.faturamentoMensal = 0;
                  } else {
                    _restaurante.faturamentoMensal =
                        MascaraDinheiro.converterStringParaDinheiro(
                            value);
                  }
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
    if (!_keyForm.currentState.validate()) {
      return;
    }

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
