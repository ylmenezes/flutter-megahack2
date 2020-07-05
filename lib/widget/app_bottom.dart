
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahack3/Cursos.dart';
import 'package:megahack3/Home.dart';
import 'package:megahack3/Acesso.dart';
import 'package:megahack3/util/authentication.dart';

class AppBottomNav extends StatelessWidget {
  AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting ,
      fixedColor: Colors.amber,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber,),
            title: Text('Inicio')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow, color: Colors.amber,),
            title: Text('Cursos')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, color: Colors.amber,),
            title: Text('Fornecedores')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app, color: Colors.amber),
            title: Text('Sair')
        ),
      ],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Home()
            ));
            break;
          case 1:
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Cursos()
            ));
            break;
          case 2:
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Home()
            ));
            break;
          case 3:
            auth.signOut();
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Acesso()
            ));
            break;
        }
      },
    );
  }
}