import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import './CadastroStep1.dart';

class TipoCadastro extends StatelessWidget {
  TipoCadastro({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 375.0,
            height: 812.0,
            decoration: BoxDecoration(
              color: const Color(0xfff2f2f2),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 228.0),
            child: Text(
              'Como você gostaria de \nse cadastrar?',
              style: TextStyle(
                fontFamily: 'Segoe Print',
                fontSize: 20,
                color: const Color(0xff302f2f),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, 171.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CadastroStep1(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(33.0, 141.0),
                    child: Container(
                      width: 315.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(166.0, 173.0),
                    child: Text(
                      'Restaurante',
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
          ),
          Transform.translate(
            offset: Offset(-3.0, 169.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => CadastroStep1(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(33.0, 264.0),
                    child: Container(
                      width: 315.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(166.0, 300.0),
                    child: Text(
                      'Fornecedor',
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
          ),
        ],
      ),
    );
  }
}
