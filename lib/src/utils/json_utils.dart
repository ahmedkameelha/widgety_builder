import 'dart:convert';

class JsonUtils {
  static bool isValidJson(String jsonString) {
    try {
      json.decode(jsonString);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Map<String, dynamic> mergeJson(
      Map<String, dynamic> target, Map<String, dynamic> source) {
    source.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        if (target[key] is! Map<String, dynamic>) {
          target[key] = <String, dynamic>{};
        }
        target[key] = mergeJson(target[key], value);
      } else {
        target[key] = value;
      }
    });
    return target;
  }
}
