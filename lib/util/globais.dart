import 'package:flutter/foundation.dart';
import 'package:megahack3/model/tipo_cozinha_model.dart';

class Globais extends ChangeNotifier {
  var _tiposCozinha = <TipoCozinhaModel>[];

  List<TipoCozinhaModel> get tiposCozinha => _tiposCozinha;

  set tiposCozinha(List<TipoCozinhaModel> cartorios) {
    _tiposCozinha = cartorios;
    notifyListeners();
  }

}
