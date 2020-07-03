import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/services.dart';
import './Home.dart';

class Acesso extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Stack(
          children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/image/bg.jpg"),
                        fit: BoxFit.cover,
                    ),
                ),
              ),
      
              SingleChildScrollView(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                     child: Column(
                      children: <Widget>[
                        TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 0, 
                                      style: BorderStyle.none,
                                  ),
                              ),
                              labelText: 'E-mail',
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
                            margin: EdgeInsets.only(top:15.0),
                            width: 320.0,
                            height: 46.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xffe0ef0f),
                            ),
                            child: Text(
                              'Entrar', 
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                  ),
                  ),
                 ),
          ]
      ),
    );
  }
}
