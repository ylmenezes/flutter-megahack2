import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahack3/CompararPrecosFornecedores.dart';
import 'package:megahack3/Fornecedor.dart';
import 'package:megahack3/widget/app_bottom.dart';
import 'package:link/link.dart';

class CompararPrecosProdutos extends StatefulWidget {
  @override
  _CompararPrecosProdutosState createState() => _CompararPrecosProdutosState();
}

class _CompararPrecosProdutosState extends State<CompararPrecosProdutos>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Produtos'),
          backgroundColor: Colors.amber,
        ),

        body:  StreamBuilder(
          stream: Firestore.instance.collection('produtos').snapshots(),
          builder: (context, snapshot){
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context,index){
                  DocumentSnapshot data = snapshot.data.documents[index];
                  return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children:[
                          InkWell(
                            child: Image.network(data["image"], height: 100,),
                            onTap: () { 
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) => CompararPrecosForncedores()
                              ));
                            },
                          ),
                        ] 
                      ),
                  ); 
                },
              );
          },
        ),

        
        bottomNavigationBar: AppBottomNav(),
    );
  }
}
