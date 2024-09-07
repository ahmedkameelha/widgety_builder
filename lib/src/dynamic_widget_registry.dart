import 'package:flutter/material.dart';

class DynamicWidgetRegistry {
  static final Map<String, Widget Function(Map<String, dynamic>)> _customBuilders = {};

  static void register(String widgetType, Widget Function(Map<String, dynamic>) builder) {
    _customBuilders[widgetType] = builder;
  }

  static Widget build(String widgetType, Map<String, dynamic> properties) {
    if (_customBuilders.containsKey(widgetType)) {
      return _customBuilders[widgetType]!(properties);
    }
    throw Exception('Unsupported widget type: $widgetType');
  }
}
