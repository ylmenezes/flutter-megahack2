import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahack3/widget/app_bottom.dart';
import 'package:link/link.dart';

class Fornecedor extends StatefulWidget {
  @override
  _FornecedorState createState() => _FornecedorState();
}

class _FornecedorState extends State<Fornecedor>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fornecedor'),
          backgroundColor: Colors.amber,
        ),

        body: StreamBuilder(
          stream: Firestore.instance.collection('fornecedor').snapshots(),
          builder: (context, snapshot){
              return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context,index){
                  DocumentSnapshot data = snapshot.data.documents[index];
                  return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [

                          Image.network(data['image'], height: 80,),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data['name'],style:TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                                  Text(data['description'],style:TextStyle(fontSize: 14,)),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                        Link(
                                          child: Icon(FontAwesomeIcons.whatsapp),
                                          url: 'https://api.whatsapp.com/send?phone='+data['contato'],
                                          onError: () {},
                                        ),
                                        Link(
                                          child: Icon(FontAwesomeIcons.instagram),
                                          url: 'https://instagram.com.br/'+data['instagram'],
                                          onError: () {},
                                        )       
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ],
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
