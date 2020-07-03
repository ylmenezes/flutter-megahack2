import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:megahack3/Sucesso.dart';

class CadastroStep3 extends StatelessWidget {
  bool checkBoxValue = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Você prefere...'),
        backgroundColor: Colors.amber,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Forncedor que atendam no prazo'),
                ]
            ),

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Qualidade no produto do fornecedor  '),
                ]
            ),

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Fornecedor com atendimento de excelência'),
                ]
            ),

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Melhor preço do mercado'),
                ]
            ),

            PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Sucesso(),
                ),
              ],
              child: Container(
                alignment: Alignment.center,
                width: 320.0,
                height: 46.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.amber
                ),
                child: Text(
                  'Avançar',
                  style: TextStyle(
                      fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
