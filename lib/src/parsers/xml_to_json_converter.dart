import 'package:xml2json/xml2json.dart';

class XmlToJsonConverter {
  final Xml2Json _xml2json = Xml2Json();

  String convertXmlToJson(String xmlString) {
    try {
      _xml2json.parse(xmlString);
      return _xml2json.toParker(); // Use the Parker format for easy parsing
    } catch (e) {
      throw Exception('Error converting XML to JSON: $e');
    }
  }
}
