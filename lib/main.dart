import 'dart:io';
import 'package:flutter/material.dart';
import 'package:megahack3/Home.dart';
import 'package:megahack3/util/authentication.dart';
import 'package:megahack3/util/globais.dart';
import 'package:provider/provider.dart';
import 'Login.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthService auth = AuthService();

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
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (Platform.isIOS) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      },
      child: ChangeNotifierProvider<Globais>(
        create: (context) => Globais(),
        child: MaterialApp(
          title: 'Megahack',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              iconTheme: IconThemeData(
                color: Colors.blue,
              )),
          home: Login(),
        ),
      ),
    );
  }
}
