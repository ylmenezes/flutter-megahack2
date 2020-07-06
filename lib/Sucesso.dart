import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import './Home.dart';

class Sucesso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              size: 150,
              color: Colors.amber,
            ),
            SizedBox(
              width: 343.0,
              child: Text(
                'Parabéns!Agora você é um restaurante',
                style: TextStyle(
                  fontFamily: 'Segoe Print',
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
                ),
              ],
              child: Container(
                alignment: Alignment.center,
                width: 320.0,
                height: 46.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.amber),
                child: Text(
                  'Acesso',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
