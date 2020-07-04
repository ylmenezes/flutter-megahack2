import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:megahack3/dao/tipo_cozinha_dao.dart';
import 'package:megahack3/util/globais.dart';
import 'package:provider/provider.dart';
import './TipoCadastro.dart';
import './Acesso.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    TipoCozinhaDao().readAll().then((value) => Provider.of<Globais>(
          context,
          listen: false,
        ).tiposCozinha = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0),
            image: DecorationImage(
              image: AssetImage("assets/image/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => TipoCadastro(),
                    ),
                  ],
                  child: Container(
                    alignment: Alignment.center,
                    width: 320.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xffe0ef0f),
                    ),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(
                        fontFamily: 'Segoe Print',
                        fontSize: 20,
                        color: const Color(0xff171717),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => Acesso(),
                    ),
                  ],
                  child: Container(
                    height: 46.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffe0ef0f))),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Acessar conta',
                      style: TextStyle(
                        fontFamily: 'Segoe Print',
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
