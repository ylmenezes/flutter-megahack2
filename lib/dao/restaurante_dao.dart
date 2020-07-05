import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:megahack3/model/restaurante_model.dart';

class RestauranteDao {
  final _refRestaurante = Firestore.instance.collection('restaurantes');

  Future<DocumentReference> create(RestauranteModel restaurante) async {
    return await _refRestaurante.add(restaurante.toJson());
  }
}
