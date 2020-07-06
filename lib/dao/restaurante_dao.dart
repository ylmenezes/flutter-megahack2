import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:megahack3/model/restaurante_model.dart';
import 'package:megahack3/util/authentication.dart';

class RestauranteDao {
  final _refRestaurante = Firestore.instance.collection('restaurantes');

  Future<void> create(RestauranteModel restaurante) async {
    final usuario = await AuthService().createAccount(restaurante.email, restaurante.senha);

    restaurante.dataCriacao = DateTime.now();
    await _refRestaurante.document(usuario.uid).setData(restaurante.toJson());
  }
}
