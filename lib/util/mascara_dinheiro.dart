import 'package:flutter_multi_formatter/formatters/money_input_enums.dart';
import 'package:flutter_multi_formatter/formatters/money_input_formatter.dart';

class MascaraDinheiro {
  static final mascaraDinheiro = MoneyInputFormatter(
    leadingSymbol: 'R' + MoneyInputFormatter.DOLLAR_SIGN,
    useSymbolPadding: true,
    thousandSeparator: ThousandSeparator.Period,
  );

  static double converterStringParaDinheiro(String valor) {
    var valorFinal = valor
        .replaceAll(r'R$', '')
        .replaceAll(' ', '')
        .replaceAll('.', '')
        .replaceAll(',', '.');
    return double.parse(valorFinal);
  }
}
