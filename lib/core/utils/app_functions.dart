import 'dart:convert';

import 'package:booking/core/api/end_points.dart';
import 'package:crypto/crypto.dart';

class AppFunctions {
  static String? handleTextFieldValidator({
    required List<bool> conditions,
    required List<String> messages,
  }) {
    String? result;
    for (int i = 0; i < conditions.length; i++) {
      if (conditions[i]) {
        result = messages[i];
      }
      if (result != null) break;
    }
    return result;
  }

  static String generateSHA256() {
    String timeStamp =
        (DateTime.now().millisecondsSinceEpoch / 1000).round().toString();
    final input = utf8.encode(EndPoints.apiKey + EndPoints.secret + timeStamp);
    return sha256.convert(input).toString();
  }
}
