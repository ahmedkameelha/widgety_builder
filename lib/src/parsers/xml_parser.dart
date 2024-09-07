import 'package:xml/xml.dart';
import '../models/widget_description.dart';


class XmlParser {
  static WidgetDescription parse(String xmlString) {
    final document = XmlDocument.parse(xmlString);
    final root = document.rootElement;
    return _parseElement(root);
  }

  static WidgetDescription _parseElement(XmlElement element) {
  final type = element.name.local;
  final properties = <String, dynamic>{};
  print("Parsing element: $type");

  for (var attribute in element.attributes) {
    properties[attribute.name.local] = attribute.value;
    print(" - Attribute: ${attribute.name.local} = ${attribute.value}");
  }

  final children = element.children.whereType<XmlElement>().toList();
  if (children.isNotEmpty) {
    if (children.length == 1 && children[0].name.local != 'children') {
      properties['child'] = _parseElement(children[0]).toJson();
    } else {
      properties['children'] = children
          .where((child) => child.name.local != 'children')
          .map((child) => _parseElement(child).toJson())
          .toList();
    }
  }
  
  print("Parsed properties: $properties");
  return WidgetDescription(type: type, properties: properties);
}



}

