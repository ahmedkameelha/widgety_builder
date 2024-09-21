// lib/src/parsers/widget_registry.dart

import 'package:flutter/material.dart';

class WidgetRegistry {
  // A method to parse icon names to IconData
  static IconData parseIconData(String? iconName) {
    if (iconName == null) {
      return Icons.error;
    }

    switch (iconName) {
      case 'Icons.favorite':
        return Icons.favorite;
      case 'Icons.add':
        return Icons.add;
      case 'Icons.delete':
        return Icons.delete;
      case 'Icons.edit':
        return Icons.edit;
      case 'Icons.share':
        return Icons.share;
      case 'Icons.home':
        return Icons.home;
      case 'Icons.settings':
        return Icons.settings;
      case 'Icons.person':
        return Icons.person;
      case 'Icons.notifications':
        return Icons.notifications;
      case 'Icons.search':
        return Icons.search;
      case 'Icons.camera':
        return Icons.camera;
      case 'Icons.location_on':
        return Icons.location_on;
      case 'Icons.message':
        return Icons.message;
      case 'Icons.video_call':
        return Icons.video_call;
      case 'Icons.shopping_cart':
        return Icons.shopping_cart;
      case 'Icons.favorite_border':
        return Icons.favorite_border;
      case 'Icons.access_alarm':
        return Icons.access_alarm;
      case 'Icons.accessibility':
        return Icons.accessibility;
      case 'Icons.account_circle':
        return Icons.account_circle;
      case 'Icons.arrow_back':
        return Icons.arrow_back;
      case 'Icons.arrow_forward':
        return Icons.arrow_forward;
      case 'Icons.brightness_6':
        return Icons.brightness_6;
      case 'Icons.camera_alt':
        return Icons.camera_alt;
      case 'Icons.chat':
        return Icons.chat;
      case 'Icons.check_circle':
        return Icons.check_circle;
      case 'Icons.clear':
        return Icons.clear;
      case 'Icons.cloud':
        return Icons.cloud;
      case 'Icons.date_range':
        return Icons.date_range;
      case 'Icons.directions':
        return Icons.directions;
      case 'Icons.edit_location':
        return Icons.edit_location;
      case 'Icons.favorite_outline':
        return Icons.favorite_outline;
      case 'Icons.file_copy':
        return Icons.file_copy;
      case 'Icons.folder':
        return Icons.folder;
      case 'Icons.group':
        return Icons.group;
      case 'Icons.help':
        return Icons.help;
      case 'Icons.info':
        return Icons.info;
      case 'Icons.lock':
        return Icons.lock;
      case 'Icons.lock_open':
        return Icons.lock_open;
      case 'Icons.map':
        return Icons.map;
      case 'Icons.more_horiz':
        return Icons.more_horiz;
      case 'Icons.more_vert':
        return Icons.more_vert;
      case 'Icons.notifications_active':
        return Icons.notifications_active;
      case 'Icons.palette':
        return Icons.palette;
      case 'Icons.phone':
        return Icons.phone;
      case 'Icons.print':
        return Icons.print;
      case 'Icons.public':
        return Icons.public;
      case 'Icons.refresh':
        return Icons.refresh;
      case 'Icons.save':
        return Icons.save;
      case 'Icons.share_location':
        return Icons.share_location;
      case 'Icons.star':
        return Icons.star;
      case 'Icons.star_border':
        return Icons.star_border;
      case 'Icons.thumb_up':
        return Icons.thumb_up;
      case 'Icons.visibility':
        return Icons.visibility;
      case 'Icons.visibility_off':
        return Icons.visibility_off;
      default:
        print('Error: Unsupported icon name: $iconName');
        return Icons.error;
    }
  }
}
