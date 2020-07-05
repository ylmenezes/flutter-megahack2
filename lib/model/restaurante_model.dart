import 'package:megahack3/model/tipo_cozinha_model.dart';

class RestauranteModel {
  String cnpj;
  String razaoSocial;
  String email;
  String contato;
  List<String> listaIdTipoCozinha = <String>[];

  Map<String, dynamic> toJson() {
    return {
      'cnpj': cnpj,
      'razaoSocial': razaoSocial,
      'email': email,
      'contato': contato,
      'idTipoCozinha': listaIdTipoCozinha,
    };
  }
}
