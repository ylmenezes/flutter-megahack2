import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:megahack3/widget/app_bottom.dart';
import 'package:link/link.dart';

class Cursos extends StatefulWidget {
  @override
  _CursosState createState() => _CursosState();
}

class _CursosState extends State<Cursos>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cursos'),
          backgroundColor: Colors.amber,
        ),

        body: StreamBuilder(
          stream: Firestore.instance.collection('cursos').snapshots(),
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
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Link(
                                    child: Text(data['title'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                                    url: data['link'],
                                    onError: () {},
                                  )       
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
