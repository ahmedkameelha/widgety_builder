import 'package:flutter/material.dart';
import 'json_parser.dart';
import 'xml_parser.dart';
import 'package:dynamic_widget_builder/src/parsers/widget_builder.dart' as wd;

class DynamicWidgetBuilder {
  // Cache to store already built widgets for better performance
  static final Map<String, Widget> _widgetCache = {};

  // Build widget from JSON string with caching and error handling
  static Widget buildFromJson(String jsonString) {
    if (_widgetCache.containsKey(jsonString)) {
      return _widgetCache[jsonString]!;
    }

    try {
      final widgetDescription = JsonParser.parse(jsonString);
      final widget = wd.WidgetBuilder.build(widgetDescription);
      _widgetCache[jsonString] = widget;
      return widget;
    } catch (e, stacktrace) {
      print('Error building widget from JSON: $e');
      print(stacktrace);
      return ErrorWidget('Failed to build widget from JSON');
    }
  }

  // Build widget from XML string with caching and error handling
  static Widget buildFromXml(String xmlString) {
    if (_widgetCache.containsKey(xmlString)) {
      return _widgetCache[xmlString]!;
    }

    try {
      final widgetDescription = XmlParser.parse(xmlString);
      print("Parsed XML to WidgetDescription: $widgetDescription");
      final widget = wd.WidgetBuilder.build(widgetDescription);
      _widgetCache[xmlString] = widget;
      return widget;
    } catch (e, stacktrace) {
      print('Error building widget from XML: $e');
      print(stacktrace);
      return ErrorWidget('Failed to build widget from XML: $e');
    }
  }
}








