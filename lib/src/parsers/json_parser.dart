import 'dart:convert';
import '../models/widget_description.dart';

class JsonParser {
  static WidgetDescription parse(String jsonString) {
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    return WidgetDescription.fromJson(jsonMap);
  }
}














