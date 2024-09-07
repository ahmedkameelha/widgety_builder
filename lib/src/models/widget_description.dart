import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart';

part 'widget_description.g.dart';

@JsonSerializable(explicitToJson: true)
class WidgetDescription {
  final String type;
  final Map<String, dynamic> properties;

  WidgetDescription({required this.type, required this.properties});

  factory WidgetDescription.fromJson(Map<String, dynamic> json) =>
      _$WidgetDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$WidgetDescriptionToJson(this);


factory WidgetDescription.fromXml(XmlElement xmlElement) {
    final String type = xmlElement.name.local;
    final Map<String, dynamic> properties = {};

    // Parse attributes as properties
    xmlElement.attributes.forEach((attribute) {
        properties[attribute.name.local] = attribute.value;
    });

    // Parse child elements
    if (xmlElement.children.isNotEmpty) {
        final List<dynamic> children = [];
        xmlElement.children.whereType<XmlElement>().forEach((childElement) {
            children.add(WidgetDescription.fromXml(childElement).toJson());
        });
        if (children.isNotEmpty) {
            properties['children'] = children;
        }
    }

    // Handle text content within the element
    if (xmlElement.text.trim().isNotEmpty) {
        properties['text'] = xmlElement.text.trim();
    }

    return WidgetDescription(type: type, properties: properties);
}


}



























































// import 'package:json_annotation/json_annotation.dart';

// part 'widget_description.g.dart';

// @JsonSerializable(explicitToJson: true)
// class WidgetDescription {
//   final String type;
//   final Map<String, dynamic> properties;

//   WidgetDescription({required this.type, required this.properties});

//   factory WidgetDescription.fromJson(Map<String, dynamic> json) =>
//       _$WidgetDescriptionFromJson(json);

//   Map<String, dynamic> toJson() => _$WidgetDescriptionToJson(this);
// }



















































// import 'package:json_annotation/json_annotation.dart';

// part 'widget_description.g.dart';

// @JsonSerializable()
// class WidgetDescription {
//   final String type;
//   final Map<String, dynamic> properties;
//   @JsonKey(defaultValue: <WidgetDescription>[])
//   final List<WidgetDescription> children;

//   WidgetDescription({
//     required this.type,
//     required this.properties,
//     required this.children,
//   });

//   factory WidgetDescription.fromJson(Map<String, dynamic> json) =>
//       _$WidgetDescriptionFromJson(json);

//   Map<String, dynamic> toJson() => _$WidgetDescriptionToJson(this);
// }