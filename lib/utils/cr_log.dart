import 'package:talker/talker.dart';

class CRLog {
  final _talker = Talker();

  void info(String message) {
    _talker.info(message);
  }

  void error(String message) {
    _talker.error(message);
  }
}
