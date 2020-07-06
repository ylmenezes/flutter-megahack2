import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:megahack3/Sucesso.dart';
import 'package:megahack3/dao/restaurante_dao.dart';
import 'package:megahack3/model/restaurante_model.dart';

class CadastroStep3 extends StatefulWidget {
  @override
  _CadastroStep3State createState() => _CadastroStep3State();
}

class _CadastroStep3State extends State<CadastroStep3> {
  final _keyScaffold = GlobalKey<ScaffoldState>();
  final checkBoxValue = true;

  RestauranteModel _restaurante;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    _restaurante = args['restaurante'];

    return Scaffold(
      key: _keyScaffold,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Prioridades'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              'Selecione suas prioridades de 1 a 5 em uma compra, sendo 1 a mais importe e 5 a menos importante:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            criarListTile('Prazo'),
            SizedBox(height: 10),
            criarListTile('Atendimento'),
            SizedBox(height: 10),
            criarListTile('Qualidade'),
            SizedBox(height: 10),
            criarListTile('Preço'),
            SizedBox(height: 10),
            criarListTile('Condições de pagamento'),
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
    );
  }

  ListTile criarListTile(String texto) {
    return ListTile(
      onTap: null,
      leading: Container(
        width: 55,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp(r'[12345]')),
            LengthLimitingTextInputFormatter(1),
          ],
        ),
      ),
      title: Text(texto),
    );
  }

  _submit() {
    RestauranteDao().create(_restaurante);
    Navigator.of(_keyScaffold.currentContext).push(
      MaterialPageRoute(
        builder: (_) => Sucesso(),
      ),
    );
  }
}
