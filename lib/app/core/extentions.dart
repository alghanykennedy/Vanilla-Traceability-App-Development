import 'package:intl/intl.dart';

extension Currency on String {
  String get decodeCurrency => replaceAll(RegExp(r'[^0-9]'), '');

  String get encodeCurrency {
    double doubleAmount = double.parse(this);
    if (doubleAmount == 0) {
      return "Rp. 0";
    } else {
      final amountStr = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp')
          .format(int.parse(this));

      return amountStr.substring(0, amountStr.length - 3);
    }
  }
}
