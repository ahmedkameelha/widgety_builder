import 'package:xml/xml.dart';

class XmlUtils {
  static bool isValidXml(String xmlString) {
    try {
      XmlDocument.parse(xmlString);
      return true;
    } catch (e) {
      return false;
    }
  }

  static String prettyPrintXml(String xmlString) {
    final document = XmlDocument.parse(xmlString);
    return document.toXmlString(pretty: true, indent: '  ');
  }
}

































// import 'package:xml/xml.dart';
// import 'dart:convert';

// class XmlUtils {
//   static Map<String, dynamic> xmlToMap(String xmlString) {
//     final document = XmlDocument.parse(xmlString);
//     return _convertElement(document.rootElement);
//   }

//   static Map<String, dynamic> _convertElement(XmlElement element) {
//     final Map<String, dynamic> jsonMap = {};

//     jsonMap['type'] = element.name.toString();
//     jsonMap['properties'] = Map<String, dynamic>.fromIterable(
//       element.attributes,
//       key: (attr) => attr.name.toString(),
//       value: (attr) => attr.value,
//     );

//     if (element.childElements.isNotEmpty) {
//       jsonMap['children'] = element.childElements.map(_convertElement).toList();
//     } else {
//       jsonMap['children'] = [];
//     }

//     return jsonMap;
//   }

//   static String prettyPrint(String xmlString) {
//     final document = XmlDocument.parse(xmlString);
//     return document.toXmlString(pretty: true, indent: '  ');
//   }
// }








