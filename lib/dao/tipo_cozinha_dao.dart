import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:megahack3/model/tipo_cozinha_model.dart';

class TipoCozinhaDao {
  final _refTipoCozinha = Firestore.instance.collection('tipoCozinha');

  Future<List<TipoCozinhaModel>> readAll() async {
    var listaTiposCozinha = <TipoCozinhaModel>[];
    var snapshots = await _refTipoCozinha.getDocuments();

    snapshots.documents.forEach((element) {
      listaTiposCozinha.add(TipoCozinhaModel.fromFirestore(element));
    });

    return listaTiposCozinha;
  }
}
