import 'package:cloud_firestore/cloud_firestore.dart';

class TipoCozinhaModel {
  String id;
  String nome;

  TipoCozinhaModel({
    this.id,
    this.nome,
  });

  factory TipoCozinhaModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data;

    return TipoCozinhaModel(
      id: doc.documentID,
      nome: data['nome'],
    );
  }
}
