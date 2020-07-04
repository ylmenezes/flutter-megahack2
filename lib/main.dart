import 'dart:io';

import 'package:flutter/material.dart';
import 'package:megahack3/util/globais.dart';
import 'package:provider/provider.dart';
import 'Login.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
