import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import './Home.dart';

class Sucesso extends StatelessWidget {
  Sucesso({
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
                1.0, 0.0, -11.46, -25.8, 0.0, 1.0),
            child: Container(
              width: 398.0,
              height: 865.0,
              decoration: BoxDecoration(
                color: const Color(0xfff2f2f2),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(106.0, 197.0),
            child: Container(
              width: 163.0,
              height: 163.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(81.5, 81.5)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 384.0),
            child: SizedBox(
              width: 343.0,
              child: Text(
                'Parabéns!Agora você é um fornecedor',
                style: TextStyle(
                  fontFamily: 'Segoe Print',
                  fontSize: 20,
                  color: const Color(0xffb4c002),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 484.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
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
            offset: Offset(150.0, 490.0),
            child: Text(
              'Acessar',
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
