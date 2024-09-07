import 'package:flutter/material.dart';
import 'src/parsers/json_parser.dart';
import 'src/parsers/xml_parser.dart';
import 'package:dynamic_widget_builder/src/parsers/widget_builder.dart' as wd;

class DynamicWidgetBuilder {
  static Widget buildFromJson(String jsonString) {
    try {
      final widgetDescription = JsonParser.parse(jsonString);
      return wd.WidgetBuilder.build(widgetDescription);
    } catch (e) {
      print('Error building widget from JSON: $e');
      return Text('Failed to build widget from JSON');
    }
  }

  static Widget buildFromXml(String xmlString) {
    try {
      final widgetDescription = XmlParser.parse(xmlString);
      return wd.WidgetBuilder.build(widgetDescription);
    } catch (e) {
      print('Error building widget from XML: $e');
      return Text('Failed to build widget from XML');
    }
  }
}






















































// library dynamic_widget_builder;

// export 'src/parsers/dynamic_widget_builder.dart';



