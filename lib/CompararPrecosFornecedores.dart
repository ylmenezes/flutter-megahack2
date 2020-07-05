import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:megahack3/widget/app_bottom.dart';
import 'package:link/link.dart';

class CompararPrecosForncedores extends StatefulWidget {
  @override
  _CompararPrecosForncedoresState createState() => _CompararPrecosForncedoresState();
}

class _CompararPrecosForncedoresState extends State<CompararPrecosForncedores>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resultados'),
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
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(data['name'],style:TextStyle(fontSize: 18,)),
                                  Text('R\$ 49,00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                  Row(
                                    children: [
                                        Link(
                                          child: Icon(FontAwesomeIcons.whatsapp,color: Colors.green,),
                                          url: 'https://api.whatsapp.com/send?phone='+data['contato'],
                                          onError: () {},
                                        ),                                    ],
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
