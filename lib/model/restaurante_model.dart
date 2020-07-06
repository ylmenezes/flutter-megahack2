import 'package:megahack3/model/cliente_model.dart';

class RestauranteModel extends ClienteModel {
  List<String> listaIdTipoCozinha = <String>[];

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'nomeEmpresa': nomeEmpresa,
      'cnpj': cnpj,
      'faturamentoMensal': faturamentoMensal,
      'nomeProprietario': nomeProprietario,
      'cpfProprietario': cpfProprietario,
      'idTipoCozinha': listaIdTipoCozinha,
    };
  }
}
