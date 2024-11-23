import 'package:easy_localization/easy_localization.dart';

extension DateExt on String {
  String toFormattedString(String formatted) {
    try {
      return DateFormat(formatted).format(DateFormat('yyyy-MM-dd').parse(this));
    } catch (e) {
      return this;
    }
  }
}
