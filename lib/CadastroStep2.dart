import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:megahack3/CadastroStep3.dart';
import 'package:megahack3/Sucesso.dart';

class CadastroStep2 extends StatelessWidget {
  bool checkBoxValue = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Tipo de comida'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[

            Row(
              children: <Widget>[
                Checkbox(
                  value: checkBoxValue,
                  activeColor: Colors.green,
                  onChanged: null,
                ),
                Text('Chinesa'),
              ]
            ),

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Italiana'),
                ]
            ),

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Japonesa'),
                ]
            ),

            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: null,
                  ),
                  Text('Tailandesa'),
                ]
            ),

            PageLink(
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
