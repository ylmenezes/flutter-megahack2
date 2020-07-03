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
      body: Stack(
        children: <Widget>[
          Transform(
            transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
                1.0, 0.0, -14.46, -37.8, 0.0, 1.0),
            child: Container(
              width: 398.0,
              height: 865.0,
              decoration: BoxDecoration(
                color: const Color(0xfff2f2f2),
              ),
            ),
          ),
          Stack(
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
          Transform.translate(
            offset: Offset(3.0, 98.0),
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
                    'CNPJ',
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
            offset: Offset(3.0, 180.0),
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
                    'Razão Social',
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
            offset: Offset(3.0, 262.0),
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
                    'Data Abertura',
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
            offset: Offset(0.0, 2.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(28.0, 747.0),
                  child: Container(
                    width: 320.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: const Color(0xffe0ef0f),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(146.0, 753.0),
                  child: Text(
                    'Avançar',
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
            offset: Offset(28.0, 749.0),
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
              'Avançar',
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
