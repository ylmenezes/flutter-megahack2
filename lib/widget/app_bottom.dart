
import 'package:flutter/material.dart';
import 'package:megahack3/CompararPrecosProdutos.dart';
import 'package:megahack3/Cursos.dart';
import 'package:megahack3/Fornecedor.dart';
import 'package:megahack3/Home.dart';
import 'package:megahack3/Acesso.dart';
import 'package:megahack3/util/authentication.dart';

class AppBottomNav extends StatelessWidget {
  AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed ,
      fixedColor: Colors.amber,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber, size: 30,),
            title: Text('', style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow, color: Colors.amber, size: 30,),
            title: Text('',style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on, color: Colors.amber,size: 30,),
            title: Text('',style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, color: Colors.amber,size: 30,),
            title: Text('',style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app, color: Colors.amber, size: 30,),
            title: Text('',style: TextStyle(color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),)
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
                builder: (BuildContext context) => CompararPrecosProdutos()
            ));
            break;
          case 3:
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => Fornecedor()
            ));
            break;
          case 4:
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