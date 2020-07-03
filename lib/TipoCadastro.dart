import 'package:flutter/cupertino.dart';
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
      body: Container(
        padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Text(
                'Como você gostaria de \nse cadastrar?',
                style: TextStyle(
                  fontFamily: 'Segoe Print',
                  fontSize: 20,
                  color: const Color(0xff302f2f),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,

                child: PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => CadastroStep1(),
                    ),
                  ],
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                       Text(
                         'Restaurante',
                         style: TextStyle(
                           fontFamily: 'Segoe Print',
                           fontSize: 20,
                           color: Colors.black87,
                           fontWeight: FontWeight.w700,
                         ),
                         textAlign: TextAlign.center,
                       ),
                     ],
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,

                child: PageLink(
                  links: [
                    PageLinkInfo(
                      transition: LinkTransition.Fade,
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => CadastroStep1(),
                    ),
                  ],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Fornecedor',
                        style: TextStyle(
                          fontFamily: 'Segoe Print',
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                ),
              ),
          ],
        ),

      ),
    );
  }
}
