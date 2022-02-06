import 'package:intl/intl.dart';

String formatCurrency({required double amount,required int decimalCount}) {
  final NumberFormat formatCurrency = NumberFormat.simpleCurrency(decimalDigits: decimalCount,);
  return formatCurrency.format(amount);
}