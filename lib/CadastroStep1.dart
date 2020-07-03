import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import './CadastroStep2.dart';

class CadastroStep1 extends StatelessWidget {
  CadastroStep1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
          title: Text('Cadastro'),
          backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

             TextFormField(
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                 labelText: 'CNPJ',
               ),
             ),

              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Razão Social',
                ),
              ),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Contato',
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                child: PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => CadastroStep2(),
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
              ),
            ],
          ),
        ),
    );
  }
}
