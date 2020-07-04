import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popup {

  Future<void> open(context,title,msg) async{
      Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { 
          Navigator.of(context).pop(false);
      },
    );
    
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: [
        okButton,
      ],
    );

    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
  
}