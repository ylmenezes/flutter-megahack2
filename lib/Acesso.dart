import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahack3/Home.dart';
import 'package:megahack3/util/authentication.dart';
import 'package:megahack3/widget/popup.dart';

class Acesso extends StatefulWidget {
  createState() => AcessoPageState();
}

class AcessoPageState extends State<Acesso> {
  AuthService auth = AuthService();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Home(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    auth.getUser.then(
      (user) {
        if (user != null) {
          Navigator.of(context).push(_createRoute());
        }
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child:  Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.2,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0),
                image: DecorationImage(
                  image: AssetImage("assets/image/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [ Image.asset('assets/image/logo.png', height: 250,) ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                   TextFormField(
                      controller: _emailController,
                      style: TextStyle(fontSize: 14, height: .5),
                      validator: (value) => value.isEmpty ? 'E-mail obrigatório' : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.none,
                          ),
                        ),
                        labelText: 'E-mail',
                      ),
                    ),
                   SizedBox(height: 2.0,),
                   TextFormField(
                      controller: _passController,
                      style: TextStyle(fontSize: 14, height: .8),
                      validator: (value) => value.isEmpty ? 'Senha obrigatória' : null,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.none,
                          ),
                        ),
                        labelText: 'Senha',
                      ),
                    ),
                   FlatButton.icon(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.red)
                        ),
                        padding: EdgeInsets.all(10),
                        icon: Icon(FontAwesomeIcons.signInAlt, color: Colors.white),
                        color: Colors.amber,
                        label: Expanded(
                          child: Text('Entrar', textAlign: TextAlign.center, style:TextStyle(fontSize: 14)),
                        ),
                        onPressed: () async {
                          final form = _formKey.currentState;
                          if( form.validate() ) {
                            auth.login(_emailController.text,_passController.text).then( (FirebaseUser user) {
                              Navigator.of(context).push(_createRoute());
                            }).catchError((e) =>{
                              Popup().open(context, e.code, e.message)
                            });
                          }
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
     );
  }
}
