import 'package:intl/intl.dart';

String dateTimeFormatToString(DateTime date) {
  return DateFormat('dd-MM-yyyy – hh:mm').format(date);
}
