import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import './Sucesso.dart';

class CadastroStep2 extends StatelessWidget {
  CadastroStep2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform(
            transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
                1.0, 0.0, -11.46, -38.8, 0.0, 1.0),
            child: Container(
              width: 398.0,
              height: 865.0,
              decoration: BoxDecoration(
                color: const Color(0xfff2f2f2),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-2.0, 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 375.0,
                  height: 46.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0ef0f),
                  ),
                ),
                Transform.translate(
                  offset: Offset(90.0, 6.0),
                  child: Text(
                    'Dados do Fornecedor',
                    style: TextStyle(
                      fontFamily: 'Segoe Print',
                      fontSize: 20,
                      color: const Color(0xff302f2f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 26.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(30.0, 203.0),
                  child: Container(
                    width: 315.0,
                    height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(42.0, 209.0),
                  child: Text(
                    'CEP',
                    style: TextStyle(
                      fontFamily: 'Segoe Print',
                      fontSize: 20,
                      color: const Color(0xff8f8f8f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 103.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(30.0, 203.0),
                  child: Container(
                    width: 315.0,
                    height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(42.0, 209.0),
                  child: Text(
                    'Endereço',
                    style: TextStyle(
                      fontFamily: 'Segoe Print',
                      fontSize: 20,
                      color: const Color(0xff8f8f8f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 180.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(30.0, 203.0),
                  child: Container(
                    width: 315.0,
                    height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(42.0, 209.0),
                  child: Text(
                    'Bairro',
                    style: TextStyle(
                      fontFamily: 'Segoe Print',
                      fontSize: 20,
                      color: const Color(0xff8f8f8f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 257.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(30.0, 203.0),
                  child: Container(
                    width: 315.0,
                    height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(42.0, 209.0),
                  child: Text(
                    'Cidade',
                    style: TextStyle(
                      fontFamily: 'Segoe Print',
                      fontSize: 20,
                      color: const Color(0xff8f8f8f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 334.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(30.0, 203.0),
                  child: Container(
                    width: 315.0,
                    height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(42.0, 209.0),
                  child: Text(
                    'Estado',
                    style: TextStyle(
                      fontFamily: 'Segoe Print',
                      fontSize: 20,
                      color: const Color(0xff8f8f8f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(25.0, 749.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Sucesso(),
                ),
              ],
              child: Container(
                width: 320.0,
                height: 46.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xffe0ef0f),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(146.0, 755.0),
            child: Text(
              'Concluir',
              style: TextStyle(
                fontFamily: 'Segoe Print',
                fontSize: 20,
                color: const Color(0xff302f2f),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
