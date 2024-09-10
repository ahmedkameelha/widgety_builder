import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xml/xml.dart';
import '../models/widget_description.dart';

typedef WidgetBuilderFunction = Widget Function(
    Map<String, dynamic> properties);

class WidgetBuilder {
  static final Map<String, WidgetBuilderFunction> _customBuilders = {};

  static void registerCustomBuilder(
      String type, WidgetBuilderFunction builder) {
    _customBuilders[type] = builder;
  }

  static Widget build(WidgetDescription description) {
    // Check if the widget type has a custom builder registered
    print(
        'Building widget: ${description.type} with properties: ${description.properties}');

    if (_customBuilders.containsKey(description.type)) {
      return _customBuilders[description.type]!(description.properties);
    }

    try {
      switch (description.type) {
        case 'Text':
          return _buildText(description.properties);
        case 'Container':
          return _buildContainer(description.properties);
        case 'Column':
          return _buildColumn(description.properties);
        case 'Row':
          return _buildRow(description.properties);
        case 'ListView':
          return _buildListView(description.properties);
        case 'Expanded':
          return _buildExpanded(description.properties);
        case 'Padding':
          return _buildPadding(description.properties);
        case 'Center':
          return _buildCenter(description.properties);
        case 'Align':
          return _buildAlign(description.properties);
        case 'SizedBox':
          return _buildSizedBox(description.properties);
        case 'AspectRatio':
          return _buildAspectRatio(description.properties);
        case 'FittedBox':
          return _buildFittedBox(description.properties);
        case 'FractionallySizedBox':
          return _buildFractionallySizedBox(description.properties);
        case 'LimitedBox':
          return _buildLimitedBox(description.properties);
        case 'Offstage':
          return _buildOffstage(description.properties);
        case 'OverflowBox':
          return _buildOverflowBox(description.properties);
        case 'SizedOverflowBox':
          return _buildSizedOverflowBox(description.properties);
        case 'Transform':
          return _buildTransform(description.properties);
        case 'CustomPaint':
          return _buildCustomPaint(description.properties);
        case 'ClipPath':
          return _buildClipPath(description.properties);
        case 'ClipRect':
          return _buildClipRect(description.properties);
        case 'ClipOval':
          return _buildClipOval(description.properties);
        case 'Opacity':
          return _buildOpacity(description.properties);
        case 'BackdropFilter':
          return _buildBackdropFilter(description.properties);
        case 'DecoratedBox':
          return _buildDecoratedBox(description.properties);
        case 'FractionalTranslation':
          return _buildFractionalTranslation(description.properties);
        case 'RotatedBox':
          return _buildRotatedBox(description.properties);
        case 'ConstrainedBox':
          return _buildConstrainedBox(description.properties);
        case 'UnconstrainedBox':
          return _buildUnconstrainedBox(description.properties);
        case 'Scaffold':
          return _buildScaffold(description.properties);
        case 'AppBar':
          return _buildAppBar(description.properties);
        case 'BottomNavigationBar':
          return _buildBottomNavigationBar(description.properties);
        case 'Drawer':
          return _buildDrawer(description.properties);
        case 'SingleChildScrollView':
          return _buildSingleChildScrollView(description.properties);  
        case 'TabBar':
          return _buildTabBar(description.properties);
        case 'TabBarView':
          return _buildTabBarView(description.properties);
        case 'AlertDialog':
          return _buildAlertDialog(description.properties);
        case 'SnackBar':
          return _buildSnackBar(description.properties);
        case 'Divider':
          return _buildDivider(description.properties);
        case 'CircularProgressIndicator':
          return _buildCircularProgressIndicator(description.properties);
        case 'LinearProgressIndicator':
          return _buildLinearProgressIndicator(description.properties);
        case 'Slider':
          return _buildSlider(description.properties);
        case 'Switch':
          return _buildSwitch(description.properties);
        case 'Checkbox':
          return _buildCheckbox(description.properties);
        case 'Radio':
          return _buildRadio(description.properties);
        case 'DropdownButton':
          return _buildDropdownButton(description.properties);
        case 'Chip':
          return _buildChip(description.properties);
        case 'Tooltip':
          return _buildTooltip(description.properties);
        case 'AnimatedContainer':
          return _buildAnimatedContainer(description.properties);
        case 'FadeTransition':
          return _buildFadeTransition(description.properties);
        case 'ScaleTransition':
          return _buildScaleTransition(description.properties);
        case 'SlideTransition':
          return _buildSlideTransition(description.properties);
        case 'Stack':
          return _buildStack(description.properties); 
        case 'Positioned':
          return _buildPositioned(description.properties); 
        case 'GridView':
          return _buildGridView(description.properties);
        case 'Card': 
          return _buildCard(description.properties);
        case 'RaisedButton': 
          return _buildElevatedButton(description.properties);
        case 'FlatButton': 
          return _buildTextButton(description.properties);
        case 'OutlineButton': 
          return _buildOutlinedButton(description.properties);  
        case 'IconButton': 
          return _buildIconButton(description.properties);
        case 'FloatingActionButton': 
          return _buildFloatingActionButton(description.properties);
        case 'TextButton': // Added missing widget
          return _buildTextButton(description.properties); // Added missing widget
        default:
          throw Exception('Unsupported widget type: ${description.type}');
      }
    } catch (e, stacktrace) {
      print('Error building widget ${description.type}: $e');
      print('Stacktrace: $stacktrace');
      return ErrorWidget('Failed to build widget: ${description.type}');
    }
  }

static Widget _buildText(Map<String, dynamic> properties) {
    // Wrap widget building in try-catch
    try {
      TextStyle? style;
      if (properties.containsKey('color') || properties.containsKey('fontSize')) {
        style = TextStyle(
          color: _parseColor(properties['color']),
          fontSize: double.tryParse(properties['fontSize']?.toString() ?? ''),
          fontWeight: _parseFontWeight(properties['fontWeight']),
          fontFamily: properties['fontFamily'],
        );
      }

      String text = properties['text'] ?? '';
      return Text(text, style: style);
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Text widget: $e');
      return const Text('Error loading text', style: TextStyle(color: Colors.red));
    }
  }


  static FontWeight? _parseFontWeight(String? fontWeight) {
    switch (fontWeight?.toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
        return FontWeight.normal;
      case 'w500':
        return FontWeight.w500;
      default:
        return null;
    }
  }


  static Widget _buildContainer(Map<String, dynamic> properties) {
    // Wrap widget building in try-catch
    try {
      return Container(
        key: properties['key'] != null ? Key(properties['key']) : null,
        alignment: _parseAlignment(properties['alignment']),
        padding: _parsePadding(properties['padding']),
        color: _parseColor(properties['color']),
        decoration: properties['decoration'] != null ? const BoxDecoration() : null, 
        foregroundDecoration: properties['foregroundDecoration'] != null ? const BoxDecoration() : null, 
        width: properties['width'] != null ? double.tryParse(properties['width'].toString()) : null,
        height: properties['height'] != null ? double.tryParse(properties['height'].toString()) : null,
        constraints: properties['constraints'] != null ? const BoxConstraints() : null, 
        margin: _parsePadding(properties['margin']),
        transform: properties['transform'] != null ? Matrix4.identity() : null, 
        transformAlignment: _parseAlignment(properties['transformAlignment']),
        clipBehavior: properties['clipBehavior'] != null ? Clip.values.firstWhere((e) => e.toString() == 'Clip.${properties['clipBehavior']}') : Clip.none,
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      
      print('Error building Container widget: $e');
      return const SizedBox.shrink(); 
    }
  }


    static Widget _buildSingleChildScrollView(Map<String, dynamic> properties) {
        return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
                try {
                    return SingleChildScrollView(
                        scrollDirection: _parseScrollDirection(properties['scrollDirection']),
                        reverse: properties['reverse'] ?? false,
                        padding: _parsePadding(properties['padding']),
                        clipBehavior: properties['clipBehavior'] != null 
                            ? Clip.values.firstWhere((e) => e.toString() == 'Clip.${properties['clipBehavior']}', orElse: () => Clip.none) 
                            : Clip.none,
                        child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minHeight: constraints.minHeight,
                                maxHeight: constraints.maxHeight,
                                minWidth: constraints.minWidth,
                                maxWidth: constraints.maxWidth,
                            ),
                            child: IntrinsicHeight(
                                child: properties['child'] != null 
                                    ? build(WidgetDescription.fromJson(properties['child'])) 
                                    : Container(), // Provide an empty Container as a fallback
                            ),
                        ),
                    );
                } catch (e) {
                    print('Error building SingleChildScrollView: $e');
                    return Container(
                        color: Colors.grey, // Placeholder color
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        child: const Center(child: Text('Error loading content')),
                    );
                }
            },
        );
    }





    static Widget _buildListView(Map<String, dynamic> properties) {
        try {
            // Parse optional properties for ListView
            Axis scrollDirection = _parseScrollDirection(properties['scrollDirection']);
            bool reverse = properties['reverse'] ?? false;
            bool primary = properties['primary'] ?? true;
            bool shrinkWrap = properties['shrinkWrap'] ?? false;
            double? itemExtent = properties['itemExtent'] != null ? double.tryParse(properties['itemExtent'].toString()) : null;

            // Check if children are provided for ListView.builder or ListView
            if (properties['children'] != null) {
                return ListView.builder(
                    scrollDirection: scrollDirection,
                    reverse: reverse,
                    shrinkWrap: shrinkWrap,
                    itemCount: properties['itemCount'],
                    padding: _parsePadding(properties['padding']),
                    physics: _parseScrollPhysics(properties['physics']),
                    itemBuilder: (context, index) {
                        return index < properties['children'].length
                            ? build(WidgetDescription.fromJson(properties['children'][index]))
                            : const SizedBox.shrink();
                    },
                );
            } else {
                return ListView(
                    scrollDirection: scrollDirection,
                    reverse: reverse,
                    primary: primary,
                    shrinkWrap: shrinkWrap,
                    itemExtent: itemExtent,
                    children: _buildChildren(properties['children']),
                );
            }
        } catch (e) {
            print('Error building ListView: $e');
            return const SizedBox.shrink(); // Fallback if the ListView fails to build
        }
    }

    static Widget _buildGridView(Map<String, dynamic> properties) {
        try {
            // Parse common properties
            int crossAxisCount = int.tryParse(properties['crossAxisCount']?.toString() ?? '2') ?? 2;
            double mainAxisSpacing = double.tryParse(properties['mainAxisSpacing']?.toString() ?? '0') ?? 0;
            double crossAxisSpacing = double.tryParse(properties['crossAxisSpacing']?.toString() ?? '0') ?? 0;
            double childAspectRatio = double.tryParse(properties['childAspectRatio']?.toString() ?? '1') ?? 1;

            // Parse optional height and width properties
            double? height = double.tryParse(properties['height']?.toString() ?? '');
            double? width = double.tryParse(properties['width']?.toString() ?? '');

            // Determine if using GridView.builder or GridView.count
            Widget gridView;
            if (properties['itemCount'] != null) {
                gridView = GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: mainAxisSpacing,
                        crossAxisSpacing: crossAxisSpacing,
                        childAspectRatio: childAspectRatio,
                    ),
                    scrollDirection: _parseScrollDirection(properties['scrollDirection']),
                    shrinkWrap: properties['shrinkWrap'] ?? false,
                    padding: _parsePadding(properties['padding']),
                    physics: _parseScrollPhysics(properties['physics']),
                    itemCount: properties['itemCount'],
                    itemBuilder: (context, index) {
                        return properties['children'] != null && index < properties['children'].length
                            ? build(WidgetDescription.fromJson(properties['children'][index]))
                            : const SizedBox.shrink();
                    },
                );
            } else {
                gridView = GridView.count(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: mainAxisSpacing,
                    crossAxisSpacing: crossAxisSpacing,
                    childAspectRatio: childAspectRatio,
                    children: _buildChildren(properties['children']),
                );
            }

            // Apply height and/or width constraints if provided
            if (height != null || width != null) {
                gridView = SizedBox(
                    height: height,
                    width: width,
                    child: gridView,
                );
            }

            return gridView;
        } catch (e) {
            // Return a placeholder in case of an error
            print('Error building GridView widget: $e');
            return const SizedBox.shrink(); // Fallback if the GridView fails to build
        }
    }






    static Widget _buildCustomScrollView(Map<String, dynamic> properties) {
        try {
            return CustomScrollView(
                scrollDirection: _parseScrollDirection(properties['scrollDirection']),
                reverse: properties['reverse'] ?? false,
                shrinkWrap: properties['shrinkWrap'] ?? false,
                slivers: properties['slivers'] != null 
                    ? (properties['slivers'] as List).map<Widget>((sliver) {
                        return build(WidgetDescription.fromJson(sliver));
                    }).toList() 
                    : [],
            );
        } catch (e) {
            print('Error building CustomScrollView: $e');
            return const SizedBox.shrink();
        }
    }

    static Widget _buildScrollable(Map<String, dynamic> properties) {
        try {
            return Scrollable(
                axisDirection: _parseAxisDirection(properties['axisDirection']),
                physics: _parseScrollPhysics(properties['physics']),
                viewportBuilder: (context, offset) {
                    return properties['child'] != null 
                        ? build(WidgetDescription.fromJson(properties['child'])) 
                        : const SizedBox.shrink();
                },
            );
        } catch (e) {
            print('Error building Scrollable: $e');
            return const SizedBox.shrink();
        }
    }

    static Axis _parseScrollDirection(String? direction) {
        switch (direction?.toLowerCase()) {
            case 'horizontal':
                return Axis.horizontal;
            case 'vertical':
            default:
                return Axis.vertical;
        }
    }

    static ScrollPhysics _parseScrollPhysics(dynamic physics) {
        if (physics is String) {
            switch (physics.toLowerCase()) {
                case 'bouncing':
                    return const BouncingScrollPhysics();
                case 'clamping':
                    return const ClampingScrollPhysics();
                case 'alwaysscrollable':
                    return const AlwaysScrollableScrollPhysics();
                case 'neverscrollable':
                    return const NeverScrollableScrollPhysics();
                default:
                    return const ScrollPhysics();
            }
        } else if (physics is ScrollPhysics) {
            return physics; // Return the provided ScrollPhysics instance directly
        }
        // Return default ScrollPhysics if the input is not recognized
        return const ScrollPhysics();
    }

    static SliverGridDelegate _parseGridDelegate(dynamic gridDelegate) {
        // Implement parsing logic for GridDelegate
        return const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2); // Placeholder
    }

    static AxisDirection _parseAxisDirection(String? direction) {
        switch (direction?.toLowerCase()) {
            case 'up':
                return AxisDirection.up;
            case 'down':
                return AxisDirection.down;
            case 'left':
                return AxisDirection.left;
            case 'right':
                return AxisDirection.right;
            default:
                return AxisDirection.down;
        }
    }
  



    static Widget _buildBody(Map<String, dynamic> properties) {
      
      try {
        return Container(
          key: properties['key'] != null ? Key(properties['key']) : null,
          color: _parseColor(properties['backgroundColor']) ?? Colors.white,
          padding: _parsePadding(properties['padding']) ?? const EdgeInsets.all(16.0),
          margin: _parsePadding(properties['margin']),
          width: properties['width'] != null ? double.tryParse(properties['width'].toString()) : null,
          height: properties['height'] != null ? double.tryParse(properties['height'].toString()) : null,
          constraints: properties['constraints'] != null ? _parseBoxConstraints(properties['constraints']) : null,
          alignment: _parseAlignment(properties['alignment']),
          child: properties['child'] != null
              ? build(WidgetDescription.fromJson(properties['child']))
              : const SizedBox.shrink(), // Fallback if no child is provided
        );
      } catch (e) {
        // Return a placeholder in case of an error
        print('Error building Body widget: $e');
        return const SizedBox.shrink(); // Fallback if the Body fails to build
      }
    }


    static BoxConstraints _parseBoxConstraints(dynamic constraints) {
      if (constraints is Map<String, dynamic>) {
        double? minWidth = constraints['minWidth'] != null ? double.tryParse(constraints['minWidth'].toString()) : null;
        double? maxWidth = constraints['maxWidth'] != null ? double.tryParse(constraints['maxWidth'].toString()) : null;
        double? minHeight = constraints['minHeight'] != null ? double.tryParse(constraints['minHeight'].toString()) : null;
        double? maxHeight = constraints['maxHeight'] != null ? double.tryParse(constraints['maxHeight'].toString()) : null;

        return BoxConstraints(
          minWidth: minWidth ?? 0,
          maxWidth: maxWidth ?? double.infinity,
          minHeight: minHeight ?? 0,
          maxHeight: maxHeight ?? double.infinity,
        );
      }
      // Return default constraints if the input is not a valid map
      return const BoxConstraints();
    }


    static Widget _buildColumn(Map<String, dynamic> properties) {
    // Wrap widget building in try-catch
    try {
      return Column(
        children: _buildChildren(properties['children']),
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Column widget: $e');
      return const SizedBox.shrink(); // Fallback if the Column fails to build
    }
  }


static Widget _buildImage(Map<String, dynamic> properties) {
  // Wrap widget building in try-catch
  try {
    final String? imageUrl = properties['url'];
    
    // Ensure the URL is provided and starts with 'http'
    if (imageUrl == null || !imageUrl.startsWith('http')) {
      throw Exception("Invalid image URL. It must start with 'http'.");
    }

    return Image.network(
      imageUrl,
      errorBuilder: (context, error, stackTrace) {
        print('Error loading image: $error');
        return const SizedBox.shrink(); // Fallback if the image fails to load
      },
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building Image widget: $e');
    return const SizedBox.shrink(); // Fallback if the Image fails to build
  }
}




static Widget _buildRow(Map<String, dynamic> properties) {
  try {
    return Row(
      crossAxisAlignment: _parseCrossAxisAlignment(properties['crossAxisAlignment']),
      mainAxisAlignment: _parseMainAxisAlignment(properties['mainAxisAlignment']),
      mainAxisSize: _parseMainAxisSize(properties['mainAxisSize']),
      children: properties['children'] != null
          ? _buildChildren(properties['children'])
          : [], // Ensure children is not null
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building Row widget: $e');
    return const SizedBox.shrink(); // Fallback if the Row fails to build
  }
}

 static Widget _buildStack(Map<String, dynamic> properties) {
  try {
    // Handle the 'alignment' property
    Alignment alignment = _parseAlignment(properties['alignment']);
    
    // Handle the 'fit' property for StackFit
    StackFit fit = _parseStackFit(properties['fit']);
    
    // Handle the 'overflow' property for Overflow.clip or Overflow.visible
    Clip clipBehavior = _parseClipBehavior(properties['overflow']);
    
    // Build the Stack widget with refined rules
    return Stack(
      alignment: alignment,
      fit: fit,
      clipBehavior: clipBehavior,
      children: _buildChildren(properties['children']),
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building Stack widget: $e');
    return const SizedBox.shrink(); // Fallback if the Stack fails to build
  }
}

static Widget _buildElevatedButton(Map<String, dynamic> properties) {
  return ElevatedButton(
    onPressed: properties['onPressed'] != null
        ? () {
            try {
              // Handle button press
              properties['onPressed']();
            } catch (e) {
              print('Error handling button press: $e');
            }
          }
        : null,
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        _parseColor(properties['backgroundColor']) ?? Colors.blue,
      ),
      padding: WidgetStateProperty.all<EdgeInsets>(
        _parsePadding(properties['padding']) ?? const EdgeInsets.all(12.0),
      ),
    ),
    child: Text(
      properties['text'] ?? '',
      style: TextStyle(
        color: _parseColor(properties['textColor']) ?? Colors.white,
        fontSize: double.tryParse(properties['fontSize']!.toString()) ?? 16,
      ),
    ),
  );
}





  static Widget _buildListTile(Map<String, dynamic> properties) {
    try {
      return ListTile(
        leading: properties['leading'] != null
            ? Icon(_parseIconData(properties['leading']))
            : null,
        title: properties['title'] != null
            ? Text(properties['title'])
            : const Text('No Title'),
        subtitle: properties['subtitle'] != null
            ? Text(properties['subtitle'])
            : null,
        trailing: properties['trailing'] != null
            ? Icon(_parseIconData(properties['trailing']))
            : null,
        onTap: properties['onTap'] != null
            ? () {
                try {
                  properties['onTap']();
                } catch (e) {
                  print('Error handling ListTile tap: $e');
                }
              }
            : null,
        enabled: properties['enabled'] ?? true,
        selected: properties['selected'] ?? false,
      );
    } catch (e) {
      print('Error building ListTile: $e');
      return const SizedBox.shrink(); // Fallback if the ListTile fails to build
    }
  }

  static Widget _buildCheckboxListTile(Map<String, dynamic> properties) {
    try {
      return CheckboxListTile(
        value: properties['value'] ?? false,
        onChanged: properties['onChanged'] != null
            ? (bool? newValue) {
                try {
                  properties['onChanged'](newValue);
                } catch (e) {
                  print('Error handling CheckboxListTile change: $e');
                }
              }
            : null,
        activeColor: _parseColor(properties['activeColor']) ?? Colors.blue,
        checkColor: _parseColor(properties['checkColor']) ?? Colors.white,
        title: properties['title'] != null
            ? Text(properties['title'])
            : const Text('No Title'),
        subtitle: properties['subtitle'] != null
            ? Text(properties['subtitle'])
            : null,
        secondary: properties['secondary'] != null
            ? Icon(_parseIconData(properties['secondary']))
            : null,
      );
    } catch (e) {
      print('Error building CheckboxListTile: $e');
      return const SizedBox.shrink(); // Fallback if the CheckboxListTile fails to build
    }
  }

  static Widget _buildRadioListTile(Map<String, dynamic> properties) {
    try {
      return RadioListTile(
        value: properties['value'],
        groupValue: properties['groupValue'],
        onChanged: properties['onChanged'] != null
            ? (dynamic newValue) {
                try {
                  properties['onChanged'](newValue);
                } catch (e) {
                  print('Error handling RadioListTile change: $e');
                }
              }
            : null,
        activeColor: _parseColor(properties['activeColor']) ?? Colors.blue,
        title: properties['title'] != null
            ? Text(properties['title'])
            : const Text('No Title'),
        subtitle: properties['subtitle'] != null
            ? Text(properties['subtitle'])
            : null,
      );
    } catch (e) {
      print('Error building RadioListTile: $e');
      return const SizedBox.shrink(); // Fallback if the RadioListTile fails to build
    }
  }



  static Widget _buildSwitchListTile(Map<String, dynamic> properties) {
    try {
      return SwitchListTile(
        value: properties['value'] ?? false,
        onChanged: properties['onChanged'] != null
            ? (bool newValue) {
                try {
                  properties['onChanged'](newValue);
                } catch (e) {
                  print('Error handling SwitchListTile change: $e');
                }
              }
            : (value) {
                print('onChanged callback is not provided for SwitchListTile');
              },
        activeColor: _parseColor(properties['activeColor']) ?? Colors.blue,
        title: properties['title'] != null
            ? Text(properties['title'])
            : const Text('No Title'),
        subtitle: properties['subtitle'] != null
            ? Text(properties['subtitle'])
            : null,
        secondary: properties['secondary'] != null
            ? Icon(_parseIconData(properties['secondary']))
            : null,
      );
    } catch (e) {
      print('Error building SwitchListTile: $e');
      return const SizedBox.shrink(); // Fallback if the SwitchListTile fails to build
    }
  }

  static Widget _buildForm(Map<String, dynamic> properties) {
    try {
      return Form(
        key: properties['key'],
        autovalidateMode: properties['autovalidateMode'] ?? AutovalidateMode.disabled,
        onWillPop: properties['onWillPop'],
        child: properties['child'] ?? const SizedBox.shrink(),
      );
    } catch (e) {
      print('Error building Form: $e');
      return const SizedBox.shrink(); // Fallback if the Form fails to build
    }
  }

  static Widget _buildTextFormField(Map<String, dynamic> properties) {
    try {
      return TextFormField(
        controller: properties['controller'],
        initialValue: properties['initialValue'],
        decoration: properties['decoration'] ?? const InputDecoration(),
        keyboardType: properties['keyboardType'],
        textInputAction: properties['textInputAction'],
        onFieldSubmitted: properties['onFieldSubmitted'] != null
            ? (String value) {
                try {
                  properties['onFieldSubmitted'](value);
                } catch (e) {
                  print('Error handling field submission: $e');
                }
              }
            : null,
      );
    } catch (e) {
      print('Error building TextFormField: $e');
      return const SizedBox.shrink(); // Fallback if the TextFormField fails to build
    }
  }




  static Widget _buildSnackBar(Map<String, dynamic> properties) {
    try {
      final content = properties['content'] ?? const Text('No Content');
      final duration = properties['duration'] != null
          ? Duration(milliseconds: properties['duration'])
          : const Duration(seconds: 4);
      final action = properties['action'] != null
          ? SnackBarAction(
              label: properties['action']['label'] ?? 'Action',
              onPressed: () {
                try {
                  properties['action']['onPressed']();
                } catch (e) {
                  print('Error handling SnackBar action: $e');
                }
              },
            )
          : null;
      final backgroundColor = _parseColor(properties['backgroundColor']) ?? Colors.black;
      final behavior = properties['behavior'] ?? SnackBarBehavior.fixed;
      final shape = properties['shape'] ?? const RoundedRectangleBorder();

      return SnackBar(
        content: content,
        duration: duration,
        action: action,
        backgroundColor: backgroundColor,
        behavior: behavior,
        shape: shape,
      );
    } catch (e) {
      print('Error building SnackBar: $e');
      return const SizedBox.shrink(); // Fallback if the SnackBar fails to build
    }
  }

  static Widget _buildBottomSheet(Map<String, dynamic> properties) {
    try {
      final builder = properties['builder'] ?? (context) => const SizedBox.shrink();
      final backgroundColor = _parseColor(properties['backgroundColor']) ?? Colors.white;
      final elevation = properties['elevation'] ?? 0.0;
      final shape = properties['shape'] ?? const RoundedRectangleBorder();
      final clipBehavior = properties['clipBehavior'] ?? Clip.antiAlias;

      return BottomSheet(
        onClosing: properties['onClosing'],
        builder: builder,
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: shape,
        clipBehavior: clipBehavior,
      );
    } catch (e) {
      print('Error building BottomSheet: $e');
      return const SizedBox.shrink(); // Fallback if the BottomSheet fails to build
    }
  }

  static Widget _buildTabBar(Map<String, dynamic> properties) {
    try {
      final tabs = properties['tabs'] ?? <Widget>[];
      final controller = properties['controller'];
      final isScrollable = properties['isScrollable'] ?? false;
      final indicator = properties['indicator'] ?? const BoxDecoration();
      final labelColor = _parseColor(properties['labelColor']) ?? Colors.blue;
      final unselectedLabelColor = _parseColor(properties['unselectedLabelColor']) ?? Colors.grey;

      return TabBar(
        tabs: tabs,
        controller: controller,
        isScrollable: isScrollable,
        indicator: indicator,
        labelColor: labelColor,
        unselectedLabelColor: unselectedLabelColor,
      );
    } catch (e) {
      print('Error building TabBar: $e');
      return const SizedBox.shrink(); // Fallback if the TabBar fails to build
    }
  }

  

  static Widget _buildTabBarView(Map<String, dynamic> properties) {
    try {
      final controller = properties['controller'];
      final children = properties['children'] ?? <Widget>[];
      final physics = properties['physics'] ?? const NeverScrollableScrollPhysics();

      if (controller != null && children.length == controller.length) {
        return TabBarView(
          controller: controller,
          children: children,
          physics: physics,
        );
      } else {
        print('Error: Controller and children count mismatch or controller is null.');
        return const SizedBox.shrink(); // Fallback if the TabBarView fails to build
      }
    } catch (e) {
      print('Error building TabBarView: $e');
      return const SizedBox.shrink(); // Fallback if the TabBarView fails to build
    }
  }









static Widget _buildTextButton(Map<String, dynamic> properties) {
  return TextButton(
    onPressed: properties['onPressed'] != null
        ? () {
            try {
              properties['onPressed']();
            } catch (e) {
              print('Error handling button press: $e');
            }
          }
        : null,
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        _parseColor(properties['backgroundColor']) ?? Colors.transparent,
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        _parseColor(properties['textColor']) ?? Colors.black,
      ),
      padding: WidgetStateProperty.all<EdgeInsets>(
        _parsePadding(properties['padding']) ?? const EdgeInsets.all(8.0),
      ),
    ),
    child: Text(
      properties['text'] ?? '',
      style: TextStyle(
        fontSize: double.tryParse(properties['fontSize']?.toString() ?? '14') ?? 14,
      ),
    ),
  );
}

static Widget _buildIconButton(Map<String, dynamic> properties) {
    try {
      return IconButton(
        icon: properties['icon'] != null
            ? build(WidgetDescription.fromJson(properties['icon']))
            : const Icon(Icons.error), // Fallback icon
        color: _parseColor(properties['color']),
        onPressed: properties['onPressed'] != null ? () {} : null, // Dummy onPressed function
      );
    } catch (e) {
      print('Error building IconButton widget: $e');
      return const SizedBox.shrink(); // Fallback if IconButton fails
    }
  }




  static Widget _buildFloatingActionButton(Map<String, dynamic> properties) {
  return FloatingActionButton(
    onPressed: properties['onPressed'] != null
        ? () {
            // Define your onPressed logic here
          }
        : null,
    backgroundColor: _parseColor(properties['backgroundColor']) ?? Colors.blue,
    foregroundColor: _parseColor(properties['foregroundColor']) ?? Colors.white,
    tooltip: properties['tooltip']?.toString() ?? '',
    elevation: double.tryParse(properties['elevation']!.toString()) ?? 6.0,
    hoverElevation: double.tryParse(properties['hoverElevation']!.toString()) ?? 8.0,
    shape: properties['shape'] != null
        ? _parseShape(properties['shape'])
        : const CircleBorder(),
    mini: properties['mini'] ?? false, // If mini FAB is required
    child: properties['child'] != null
        ? build(WidgetDescription.fromJson(properties['child']))
        : Icon(_parseIconData(properties['icon']) ),
  );
}


static ShapeBorder _parseShape(String? shapeType) {
  switch (shapeType?.toLowerCase()) {
    case 'circle':
      return const CircleBorder();
    case 'rounded':
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      );
    case 'rectangle':
      return const RoundedRectangleBorder(); // Default rectangle shape
    case 'stadium':
      return const StadiumBorder(); // Added stadium shape
    case 'beveled':
      return BeveledRectangleBorder(); // Added beveled shape
    default:
      return const CircleBorder(); // Fallback to circle if no match
  }
}




static Widget _buildOutlinedButton(Map<String, dynamic> properties) {
  try {
    return OutlinedButton(
      onPressed: properties['onPressed'] != null
          ? () {
              // Define the button action here
            }
          : null,
      style: ButtonStyle(
        side: WidgetStateProperty.all<BorderSide>(
          BorderSide(
            color: _parseColor(properties['borderColor']) ?? Colors.blue,
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          _parsePadding(properties['padding']) ?? const EdgeInsets.symmetric(horizontal: 12.0),
        ),
      ),
      child: Text(
        properties['text'] ?? '',
        style: TextStyle(
          color: _parseColor(properties['textColor']) ?? Colors.blue,
          fontSize: double.tryParse(properties['fontSize']!.toString()) ?? 14,
        ),
      ),
    );
  } catch (e) {
    // Handle the error and return a placeholder
    print('Error building OutlinedButton widget: $e');
    return const SizedBox.shrink(); // Fallback if the OutlinedButton fails to build
  }
}





static Widget _buildCard(Map<String, dynamic> properties) {
  try {
    return Card(
      color: _parseColor(properties['color']) ?? Colors.white,
      elevation: properties['elevation'] != null
          ? double.tryParse(properties['elevation'].toString()) ?? 1.0
          : 1.0,
      shape: properties['borderRadius'] != null
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  double.tryParse(properties['borderRadius'].toString()) ?? 4.0),
            )
          : null,
      child: properties['child'] != null
          ? build(WidgetDescription.fromJson(properties['child']))
          : Container(),
    );
  } catch (e) {
    // Handle the error and return a placeholder
    print('Error building Card widget: $e');
    return const SizedBox.shrink(); // Fallback if the Card fails to build
  }
}


// Helper function to parse StackFit from string
static StackFit _parseStackFit(String? fitString) {
  switch (fitString?.toLowerCase()) {
    case 'loose':
      return StackFit.loose;
    case 'expand':
      return StackFit.expand;
    case 'passthrough':
    default:
      return StackFit.passthrough;
  }
}

// Helper function to parse Clip behavior
static Clip _parseClipBehavior(String? overflowString) {
  switch (overflowString?.toLowerCase()) {
    case 'visible':
      return Clip.none;
    case 'clip':
    default:
      return Clip.hardEdge;
  }
}

static Widget _buildPositioned(Map<String, dynamic> properties) {
  try {
    // Parse positional values, ensuring proper defaults and type checking
    double? left = properties['left'] != null
        ? double.tryParse(properties['left'].toString())
        : null;
    double? top = properties['top'] != null
        ? double.tryParse(properties['top'].toString())
        : null;
    double? right = properties['right'] != null
        ? double.tryParse(properties['right'].toString())
        : null;
    double? bottom = properties['bottom'] != null
        ? double.tryParse(properties['bottom'].toString())
        : null;
    double? width = properties['width'] != null
        ? double.tryParse(properties['width'].toString())
        : null;
    double? height = properties['height'] != null
        ? double.tryParse(properties['height'].toString())
        : null;

    // Handle cases where left/right or top/bottom constraints are not both null
    if (left != null && right != null && width != null) {
      throw Exception(
          "Only two of 'left', 'right', and 'width' should be provided.");
    }
    if (top != null && bottom != null && height != null) {
      throw Exception(
          "Only two of 'top', 'bottom', and 'height' should be provided.");
    }

    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: properties['child'] != null
          ? build(_getWidgetDescription(properties['child']))
          : Container(), 
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building Positioned widget: $e');
    return const SizedBox.shrink(); // Fallback if the Positioned fails to build
  }
}




  static Widget _buildSizedBox(Map<String, dynamic> properties) {
    try {
      return SizedBox(
        width: double.tryParse(properties['width']?.toString() ?? ''),
        height: double.tryParse(properties['height']?.toString() ?? ''),
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building SizedBox widget: $e');
      return const SizedBox.shrink(); // Fallback if the SizedBox fails to build
    }
  }

  static Widget _buildPadding(Map<String, dynamic> properties) {
    try {
      return Padding(
        padding: _parsePadding(properties['padding']) ?? EdgeInsets.zero,
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Padding widget: $e');
      return const SizedBox.shrink(); // Fallback if the Padding fails to build
    }
  }

  static Widget _buildCenter(Map<String, dynamic> properties) {
    try {
      return Center(
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Center widget: $e');
      return const SizedBox.shrink(); // Fallback if the Center fails to build
    }
  }

  static Widget _buildAlign(Map<String, dynamic> properties) {
    try {
      return Align(
        alignment: _parseAlignment(properties['alignment']),
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Align widget: $e');
      return const SizedBox.shrink(); // Fallback if the Align fails to build
    }
  }

  static Widget _buildAspectRatio(Map<String, dynamic> properties) {
    try {
      return AspectRatio(
        aspectRatio:
            double.tryParse(properties['aspectRatio']?.toString() ?? '1.0') ??
                1.0,
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building AspectRatio widget: $e');
      return const AspectRatio(
        aspectRatio: 1.0,
        child: SizedBox.shrink(), // Fallback if the AspectRatio fails to build
      );
    }
  }

  static Widget _buildFittedBox(Map<String, dynamic> properties) {
    try {
      return FittedBox(
        fit: _parseBoxFit(properties['fit']),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building FittedBox widget: $e');
      return const FittedBox(child: SizedBox.shrink()); // Fallback if the FittedBox fails to build
    }
  }

  static Widget _buildFractionallySizedBox(Map<String, dynamic> properties) {
    try {
      return FractionallySizedBox(
        widthFactor: double.tryParse(properties['widthFactor']?.toString() ?? ''),
        heightFactor:
            double.tryParse(properties['heightFactor']?.toString() ?? ''),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building FractionallySizedBox widget: $e');
      return const FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: 1.0,
        child: SizedBox.shrink(), // Fallback if the FractionallySizedBox fails to build
      );
    }
  }

  static Widget _buildLimitedBox(Map<String, dynamic> properties) {
    try {
      return LimitedBox(
        maxWidth:
            double.tryParse(properties['maxWidth']?.toString() ?? '0') ?? 0.0,
        maxHeight:
            double.tryParse(properties['maxHeight']?.toString() ?? '0') ?? 0.0,
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building LimitedBox widget: $e');
      return const LimitedBox(
        maxWidth: 0.0,
        maxHeight: 0.0,
        child: SizedBox.shrink(), // Fallback if the LimitedBox fails to build
      );
    }
  }

  static Widget _buildOffstage(Map<String, dynamic> properties) {
    try {
      return Offstage(
        offstage: properties['offstage'] ?? true,
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Offstage widget: $e');
      return const Offstage(offstage: true, child: SizedBox.shrink()); // Fallback if the Offstage fails to build
    }
  }

  static Widget _buildOverflowBox(Map<String, dynamic> properties) {
    try {
      return OverflowBox(
        minWidth: double.tryParse(properties['minWidth']?.toString() ?? '0'),
        maxWidth: double.tryParse(
            properties['maxWidth']?.toString() ?? 'double.infinity'),
        minHeight: double.tryParse(properties['minHeight']?.toString() ?? '0'),
        maxHeight: double.tryParse(
            properties['maxHeight']?.toString() ?? 'double.infinity'),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building OverflowBox widget: $e');
      return const OverflowBox(
        minWidth: 0,
        maxWidth: double.infinity,
        minHeight: 0,
        maxHeight: double.infinity,
        child: SizedBox.shrink(), // Fallback if the OverflowBox fails to build
      );
    }
  }

  static Widget _buildSizedOverflowBox(Map<String, dynamic> properties) {
    try {
      return SizedOverflowBox(
        size: Size(
          double.tryParse(properties['width']?.toString() ?? '0') ?? 0,
          double.tryParse(properties['height']?.toString() ?? '0') ?? 0,
        ),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building SizedOverflowBox widget: $e');
      return const SizedOverflowBox(
        size: Size(0, 0),
        child: SizedBox.shrink(), // Fallback if the SizedOverflowBox fails to build
      );
    }
  }

  static Widget _buildTransform(Map<String, dynamic> properties) {
    try {
      Matrix4? transformMatrix = _parseMatrix4(properties['transform']);
      return Transform(
        transform: transformMatrix ?? Matrix4.identity(),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Transform widget: $e');
      return Transform(
        transform: Matrix4.identity(),
        child: const SizedBox.shrink(), // Fallback if the Transform fails to build
      );
    }
  }

  static Widget _buildCustomPaint(Map<String, dynamic> properties) {
    try {
      // CustomPaint needs a painter, which may be user-provided
      // For simplicity, we assume no painter is passed and focus on child rendering
      return CustomPaint(
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building CustomPaint widget: $e');
      return const CustomPaint(
        child: SizedBox.shrink(), // Fallback if the CustomPaint fails to build
      );
    }
  }

  static Widget _buildClipPath(Map<String, dynamic> properties) {
    try {
      // ClipPath would normally need a custom clipper
      // This implementation assumes a null clipper and focuses on child rendering
      return ClipPath(
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building ClipPath widget: $e');
      return const ClipPath(
        child: SizedBox.shrink(), // Fallback if the ClipPath fails to build
      );
    }
  }

  static Widget _buildClipRect(Map<String, dynamic> properties) {
    try {
      return ClipRect(
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building ClipRect widget: $e');
      return const ClipRect(
        child: SizedBox.shrink(), // Fallback if the ClipRect fails to build
      );
    }
  }

  static Widget _buildClipOval(Map<String, dynamic> properties) {
    try {
      return ClipOval(
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building ClipOval widget: $e');
      return const ClipOval(child: SizedBox.shrink()); // Fallback if the ClipOval fails to build
    }
  }

  static Widget _buildOpacity(Map<String, dynamic> properties) {
    try {
      return Opacity(
        opacity:
            double.tryParse(properties['opacity']?.toString() ?? '1.0') ?? 1.0,
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Opacity widget: $e');
      return const Opacity(opacity: 1.0, child: SizedBox.shrink()); // Fallback if the Opacity fails to build
    }
  }

  static Widget _buildBackdropFilter(Map<String, dynamic> properties) {
    try {
      // BackdropFilter requires a filter
      // This implementation assumes a default filter and focuses on child rendering
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building BackdropFilter widget: $e');
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: const SizedBox.shrink(), // Fallback if the BackdropFilter fails to build
      );
    }
  }

  static Widget _buildDecoratedBox(Map<String, dynamic> properties) {
    try {
      // Ensure that 'decoration' is provided, or throw an error
      if (properties['decoration'] == null) {
        throw Exception("The 'decoration' property is required for DecoratedBox.");
      }
      
      return DecoratedBox(
        decoration: _parseBoxDecoration(properties['decoration']),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building DecoratedBox widget: $e');
      return const DecoratedBox(
        decoration: BoxDecoration(), // Provide a default decoration
        child: SizedBox.shrink(),
      ); // Fallback if the DecoratedBox fails to build
    }
  }

  static Widget _buildFractionalTranslation(Map<String, dynamic> properties) {
    try {
      return FractionalTranslation(
        translation: Offset(
          double.tryParse(properties['translateX']?.toString() ?? '0') ?? 0,
          double.tryParse(properties['translateY']?.toString() ?? '0') ?? 0,
        ),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building FractionalTranslation widget: $e');
      return const FractionalTranslation(
        translation: Offset(0, 0),
        child: SizedBox.shrink(), // Fallback if the FractionalTranslation fails to build
      );
    }
  }

  static Widget _buildRotatedBox(Map<String, dynamic> properties) {
    try {
      return RotatedBox(
        quarterTurns:
            int.tryParse(properties['quarterTurns']?.toString() ?? '0') ?? 0,
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building RotatedBox widget: $e');
      return const RotatedBox(
        quarterTurns: 0,
        child: SizedBox.shrink(), // Fallback if the RotatedBox fails to build
      );
    }
  }

  static Widget _buildConstrainedBox(Map<String, dynamic> properties) {
    try {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth:
              double.tryParse(properties['minWidth']?.toString() ?? '0') ?? 0,
          maxWidth: double.tryParse(
                  properties['maxWidth']?.toString() ?? 'double.infinity') ??
              double.infinity,
          minHeight:
              double.tryParse(properties['minHeight']?.toString() ?? '0') ?? 0,
          maxHeight: double.tryParse(
                  properties['maxHeight']?.toString() ?? 'double.infinity') ??
              double.infinity,
        ),
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building ConstrainedBox widget: $e');
      return ConstrainedBox(
        constraints: const BoxConstraints(),
        child: const SizedBox.shrink(), // Fallback if the ConstrainedBox fails to build
      );
    }
  }

  




  static Widget _buildUnconstrainedBox(Map<String, dynamic> properties) {
    try {
      return UnconstrainedBox(
        child: properties['children'] != null
            ? Column(children: _buildChildren(properties['children']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building UnconstrainedBox widget: $e');
      return const UnconstrainedBox(
        child: SizedBox.shrink(), // Fallback if the UnconstrainedBox fails to build
      );
    }
  }

  static Widget _buildExpanded(Map<String, dynamic> properties) {
    try {
      return Expanded(
        flex: int.tryParse(properties['flex']?.toString() ?? '1') ?? 1,
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : Container(),
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Expanded widget: $e');
      return const Expanded(child: SizedBox.shrink()); // Fallback if the Expanded fails to build
    }
  }





static Widget _buildScaffold(Map<String, dynamic> properties) {
  try {
    return Scaffold(
      appBar: properties['appBar'] != null
          ? _buildAppBar(properties['appBar']) as PreferredSizeWidget?
          : null,
      body: properties['body'] != null
          ? _buildConstrainedBody(properties['body']) // Add constrained body method
          : null,
      floatingActionButton: properties['floatingActionButton'] != null
          ? build(WidgetDescription.fromJson(properties['floatingActionButton']))
          : null,
      drawer: properties['drawer'] != null
          ? _buildDrawer(properties['drawer'])
          : null,
      bottomNavigationBar: properties['bottomNavigationBar'] != null
          ? _buildBottomNavigationBar(properties['bottomNavigationBar'])
          : null,
      backgroundColor: properties['backgroundColor'] != null
          ? _parseColor(properties['backgroundColor'])
          : null,
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building Scaffold widget: $e');
    return const SizedBox.shrink(); // Fallback if the Scaffold fails to build
  }
}

static Widget _buildConstrainedBody(Map<String, dynamic> bodyProperties) {
  try {
    Widget bodyContent = build(WidgetDescription.fromJson(bodyProperties));

    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: constraints.maxHeight, 
          ),
          child: bodyContent,
        );
      },
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building constrained body: $e');
    return const SizedBox.shrink(); // Fallback if the constrained body fails to build
  }
}






static Widget _buildAppBar(Map<String, dynamic> properties) {
  try {
    return AppBar(
      title: properties['title'] != null
          ? _buildText(properties['title'])
          : null,
      leading: properties['leading'] != null
          ? build(WidgetDescription.fromJson(properties['leading']))
          : null,
      actions: properties['actions'] != null
          ? _buildChildren(properties['actions'])
          : null,
      backgroundColor: _parseColor(properties['backgroundColor']),
    );
  } catch (e) {
    // Return a placeholder in case of an error
    print('Error building AppBar widget: $e');
    return AppBar(
      title: const Text('Error loading AppBar', style: TextStyle(color: Colors.red)),
    ); // Fallback if the AppBar fails to build
  }
}





  // static Widget _buildAppBar(Map<String, dynamic> properties) {
  //   return AppBar(
  //     title: properties['title'] != null
  //         ? build(WidgetDescription.fromJson(properties['title']))
  //         : null,
  //     leading: properties['leading'] != null
  //         ? build(WidgetDescription.fromJson(properties['leading']))
  //         : null,
  //     actions: properties['actions'] != null
  //         ? _buildChildren(properties['actions'])
  //         : null,
  //   );
  // }

  static Widget _buildBottomNavigationBar(Map<String, dynamic> properties) {
    try {
      return BottomNavigationBar(
        items: properties['items'] != null
            ? _buildBottomNavigationBarItems(properties['items'])
            : [],
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building BottomNavigationBar widget: $e');
      return BottomNavigationBar(
        items: [],
      ); // Fallback if the BottomNavigationBar fails to build
    }
  }

  static WidgetDescription _parseElement(XmlElement element) {
    final type = element.name.local;
    final properties = <String, dynamic>{};
    print(
        "Parsing element: $type with attributes ${element.attributes.map((e) => '${e.name.local}: ${e.value}').join(', ')}");

    for (var attribute in element.attributes) {
      properties[attribute.name.local] = attribute.value;
    }

    final children = element.children.whereType<XmlElement>().toList();
    if (children.isNotEmpty) {
      properties['children'] =
          children.map((child) => _parseElement(child).toJson()).toList();
    } else {
      print("Warning: Element '$type' has no children.");
    }

    print("Parsed properties for element '$type': $properties");
    return WidgetDescription(type: type, properties: properties);
  }

  static List<BottomNavigationBarItem> _buildBottomNavigationBarItems(
      List<dynamic> items) {
    try {
      return items.map((item) {
        final itemProps = item as Map<String, dynamic>;
        return BottomNavigationBarItem(
          icon: build(WidgetDescription.fromJson(itemProps['icon'])),
          label: itemProps['label'],
        );
      }).toList();
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building BottomNavigationBarItems: $e');
      return [const BottomNavigationBarItem(icon: Icon(Icons.error), label: 'Error')]; // Fallback if the items fail to build
    }
  }

  static Widget _buildDrawer(Map<String, dynamic> properties) {
    try {
      return Drawer(
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Drawer widget: $e');
      return const Drawer(
        child: Center(child: Text('Error loading drawer', style: TextStyle(color: Colors.red))),
      ); // Fallback if the Drawer fails to build
    }
  }



  static Widget _buildAlertDialog(Map<String, dynamic> properties) {
    try {
      return AlertDialog(
        title: properties['title'] != null
            ? build(WidgetDescription.fromJson(properties['title']))
            : null,
        content: properties['content'] != null
            ? build(WidgetDescription.fromJson(properties['content']))
            : null,
        actions: properties['actions'] != null
            ? _buildChildren(properties['actions'])
            : null,
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building AlertDialog widget: $e');
      return AlertDialog(
        title: const Text('Error loading AlertDialog', style: TextStyle(color: Colors.red)),
        content: const Text('An error occurred while building the content.', style: TextStyle(color: Colors.red)),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('OK'),
          ),
        ],
      ); // Fallback if the AlertDialog fails to build
    }
  }

  

  static Widget _buildDivider(Map<String, dynamic> properties) {
    try {
      return const Divider();
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Divider widget: $e');
      return const Divider(color: Colors.grey); // Fallback if the Divider fails to build
    }
  }

  static Widget _buildCircularProgressIndicator(
      Map<String, dynamic> properties) {
    try {
      return const CircularProgressIndicator();
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building CircularProgressIndicator widget: $e');
      return const Center(child: CircularProgressIndicator()); // Fallback if the CircularProgressIndicator fails to build
    }
  }

  static Widget _buildLinearProgressIndicator(Map<String, dynamic> properties) {
    try {
      return const LinearProgressIndicator();
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building LinearProgressIndicator widget: $e');
      return const LinearProgressIndicator(value: 0); // Fallback if the LinearProgressIndicator fails to build
    }
  }

  static Widget _buildSlider(Map<String, dynamic> properties) {
    try {
      return Slider(
        value: double.tryParse(properties['value']?.toString() ?? '0') ?? 0,
        onChanged: (value) {},
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Slider widget: $e');
      return const Slider(value: 0, onChanged: null); // Fallback if the Slider fails to build
    }
  }

  static Widget _buildSwitch(Map<String, dynamic> properties) {
    try {
      return Switch(
        value: properties['value'] ?? false,
        onChanged: (value) {},
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Switch widget: $e');
      return const Switch(value: false, onChanged: null); // Fallback if the Switch fails to build
    }
  }

  static Widget _buildCheckbox(Map<String, dynamic> properties) {
    try {
      return Checkbox(
        value: properties['value'] ?? false,
        onChanged: (value) {},
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Checkbox widget: $e');
      return const Checkbox(value: false, onChanged: null); // Fallback if the Checkbox fails to build
    }
  }

  static Widget _buildRadio(Map<String, dynamic> properties) {
    try {
      return Radio(
        value: properties['value'] ?? false,
        groupValue: properties['groupValue'],
        onChanged: (value) {},
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building Radio widget: $e');
      return const Radio(value: false, groupValue: null, onChanged: null); // Fallback if the Radio fails to build
    }
  }

  static Widget _buildDropdownButton(Map<String, dynamic> properties) {
    try {
      return DropdownButton(
        items: properties['items'] != null
            ? _buildDropdownButtonItems(properties['items'])
            : [],
        onChanged: (value) {},
      );
    } catch (e) {
      // Return a placeholder in case of an error
      print('Error building DropdownButton widget: $e');
      return  DropdownButton(
        items: [],
        onChanged: null,
      ); // Fallback if the DropdownButton fails to build
    }
  }

  static List<DropdownMenuItem> _buildDropdownButtonItems(List<dynamic> items) {
    try {
      return items.map((item) {
        final itemProps = item as Map<String, dynamic>;
        return DropdownMenuItem(
          value: itemProps['value'],
          child: build(WidgetDescription.fromJson(itemProps['child'])),
        );
      }).toList();
    } catch (e) {
      print('Error building DropdownMenuItem: $e');
      return [const DropdownMenuItem(value: null, child: Text('Error'))]; // Fallback for DropdownMenuItem
    }
  }

  static Widget _buildChip(Map<String, dynamic> properties) {
    try {
      return Chip(
        label: properties['label'] != null
            ? build(WidgetDescription.fromJson(properties['label']))
            : Container(),
      );
    } catch (e) {
      print('Error building Chip widget: $e');
      return const Chip(label: Text('Error')); // Fallback for Chip
    }
  }

  static Widget _buildTooltip(Map<String, dynamic> properties) {
    try {
      return Tooltip(
        message: properties['message'],
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      print('Error building Tooltip widget: $e');
      return Tooltip(message: 'Error', child: Container()); // Fallback for Tooltip
    }
  }

  static Widget _buildAnimatedContainer(Map<String, dynamic> properties) {
    try {
      return AnimatedContainer(
        duration: Duration(milliseconds: properties['duration'] ?? 300),
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      print('Error building AnimatedContainer widget: $e');
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300), // Fallback with default duration
        child: Container(), // Placeholder compatible with AnimatedContainer
      );
    }
  }

  static Widget _buildFadeTransition(Map<String, dynamic> properties) {
    try {
      return FadeTransition(
        opacity: AlwaysStoppedAnimation(
          double.tryParse(properties['opacity']?.toString() ?? '1.0') ?? 1.0,
        ),
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      print('Error building FadeTransition widget: $e');
      return const FadeTransition(opacity: AlwaysStoppedAnimation(1.0), child: SizedBox()); // Fallback for FadeTransition
    }
  }

  static Widget _buildScaleTransition(Map<String, dynamic> properties) {
    try {
      return ScaleTransition(
        scale: AlwaysStoppedAnimation(
          double.tryParse(properties['scale']?.toString() ?? '1.0') ?? 1.0,
        ),
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      print('Error building ScaleTransition widget: $e');
      return const ScaleTransition(
        scale: AlwaysStoppedAnimation(1.0),
        child: SizedBox.shrink(), // Fallback for ScaleTransition
      );
    }
  }


  static Widget _buildIcon(Map<String, dynamic> properties) {
    try {
      final iconData = _parseIconData(properties['icon']);
      final color = _parseColor(properties['color']);
      return Icon(
        iconData,
        color: color,
      );
    } catch (e) {
      print('Error building Icon widget: $e');
      return const Icon(Icons.error); // Fallback for Icon
    }
  }

static IconData _parseIconData(String? iconName) {
  if (iconName == null) {
    return Icons.error; // Return error icon if iconName is null
  }

  switch (iconName) {
    case 'Icons.favorite':
      return Icons.favorite;
    case 'Icons.share':
      return Icons.share;
    case 'Icons.add':
      return Icons.add;
    case 'Icons.edit':
      return Icons.edit;
    case 'Icons.home':
      return Icons.home;
    case 'Icons.settings':
      return Icons.settings; // Added settings icon
    case 'Icons.person':
      return Icons.person; // Added person icon
    case 'Icons.notifications':
      return Icons.notifications; // Added notifications icon
    case 'Icons.search':
      return Icons.search; // Added search icon
    case 'Icons.camera':
      return Icons.camera; // Added camera icon
    case 'Icons.location_on':
      return Icons.location_on; // Added location icon
    case 'Icons.message':
      return Icons.message; // Added message icon
    case 'Icons.video_call':
      return Icons.video_call; // Added video call icon
    default:
      return Icons.error; // Return error icon for unrecognized icon names
  }
}





  static Widget _buildSlideTransition(Map<String, dynamic> properties) {
    try {
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: Offset(
            double.tryParse(properties['offsetX']?.toString() ?? '0') ?? 0,
            double.tryParse(properties['offsetY']?.toString() ?? '0') ?? 0,
          ),
        ).animate(CurvedAnimation(
          parent: const AlwaysStoppedAnimation(1.0),
          curve: Curves.easeInOut,
        )),
        child: properties['child'] != null
            ? build(WidgetDescription.fromJson(properties['child']))
            : null,
      );
    } catch (e) {
      print('Error building SlideTransition widget: $e');
      return const SlideTransition(
        position: AlwaysStoppedAnimation(Offset.zero),
        child: SizedBox.shrink(), // Fallback for SlideTransition
      );
    }
  }


   static List<Widget> _buildChildren(List<dynamic>? children) {
    return children?.map((child) {
      try {
        if (child is Map<String, dynamic>) {
          return build(WidgetDescription.fromJson(child));
        }
      } catch (e) {
        print('Error building child widget: $e');
        return const SizedBox.shrink(); // Fallback for child widgets that fail to build
      }
      return const SizedBox.shrink();
    }).toList() ?? [];
  }



  
//  static List<Widget> _buildChildren(List<dynamic>? children) {
//     return children?.map((child) {
//       try {
//         if (child is Map<String, dynamic>) {
//           return build(WidgetDescription.fromJson(child));
//         }
//       } catch (e) {
//         print('Error building child widget: $e');
//         return SizedBox.shrink(); // Fallback for child widgets that fail to build
//       }
//       return SizedBox.shrink();
//     }).toList() ?? [];
//   }



  // static List<Widget> _buildChildren(List<dynamic>? children) {
  //   return children?.map((child) {
  //         if (child is Map<String, dynamic>) {
  //           if (child.containsKey('type') && child.containsKey('properties')) {
  //             return build(WidgetDescription.fromJson(child));
  //           }
  //         }

  //         // Return a default empty SizedBox if parsing fails
  //         return SizedBox.shrink();
  //       }).toList() ??
  //       [];
  // }

  static Color? _parseColor(String? colorString) {
    if (colorString == null || !colorString.startsWith('#')) return null;
    colorString = colorString.substring(1);
    if (colorString.length == 6) {
      return Color(int.parse('0xFF$colorString'));
    }
    // Return a default color in case of parsing failure
    return Colors.black;
  }

  Widget _parseText(Map<String, dynamic> json, BuildContext context) {
  return Text(
    json['text']?.toString() ?? 'Default Text',
    style: TextStyle(
      color: _parseColor(json['color']),
      fontSize: json['fontSize']?.toDouble() ?? 14.0,
      fontWeight: _parseFontWeight(json['fontWeight']),
      fontFamily: json['fontFamily'] ?? 'Arial',
    ),
  );
}

EdgeInsets _parseEdgeInsets(String edgeInsetsString) {
  List<String> values = edgeInsetsString.split(',');
  return EdgeInsets.fromLTRB(
    double.parse(values[0]),
    double.parse(values[1]),
    double.parse(values[2]),
    double.parse(values[3]),
  );
}


  static EdgeInsets? _parsePadding(String? paddingString) {
    if (paddingString == null) return EdgeInsets.zero;
    final parts = paddingString.split(',').map(double.parse).toList();
    if (parts.length == 4) {
      return EdgeInsets.fromLTRB(parts[0], parts[1], parts[2], parts[3]);
    }
    // Default to zero padding in case of incorrect input
    return EdgeInsets.zero;
  }

static Alignment _parseAlignment(String? alignmentString) {
  switch (alignmentString?.toLowerCase()) {
    case 'topleft':
      return Alignment.topLeft;
    case 'topcenter':
      return Alignment.topCenter;
    case 'topright':
      return Alignment.topRight;
    case 'centerleft':
      return Alignment.centerLeft;
    case 'center':
      return Alignment.center;
    case 'centerright':
      return Alignment.centerRight;
    case 'bottomleft':
      return Alignment.bottomLeft;
    case 'bottomcenter':
      return Alignment.bottomCenter;
    case 'bottomright':
      return Alignment.bottomRight;
    default:
      // Default alignment is center
      return Alignment.center;
  }
}


Widget _parseWidget(Map<String, dynamic> json, BuildContext context) {
  switch (json['type']) {
    case 'Text':
      return _parseText(json, context);
    case 'Container':
      return _buildContainer(json);
    case 'Column':
      return _buildColumn(json);
    case 'Row':
      return _buildRow(json);
    case 'Stack':
      return _buildStack(json);
    case 'Positioned':
      return _buildPositioned(json);
    case 'GridView':
      return _buildGridView(json);
    case 'SingleChildScrollView':
      return _buildSingleChildScrollView(json);
    case 'Scaffold':
      return _buildScaffold(json);
    case 'AppBar':
      return _parseAppBar(json, context);
    default:
      return const SizedBox.shrink(); // Return an empty widget for unsupported types
  }
}

Widget _parseAppBar(Map<String, dynamic> json, BuildContext context) {
  return AppBar(
    title: _parseText(json['title'], context),
    backgroundColor: _parseColor(json['backgroundColor']),
    leading: json['leading'] != null ? _parseWidget(json['leading'], context) : null,
    actions: json['actions'] != null ? _buildChildren(json['actions']) : null,
  );
}



  static BoxFit _parseBoxFit(String? fitString) {
    switch (fitString) {
      case 'fill':
        return BoxFit.fill;
      case 'contain':
        return BoxFit.contain;
      case 'cover':
        return BoxFit.cover;
      case 'fitWidth':
        return BoxFit.fitWidth;
      case 'fitHeight':
        return BoxFit.fitHeight;
      case 'none':
        return BoxFit.none;
      case 'scaleDown':
        return BoxFit.scaleDown;
      default:
        return BoxFit.cover;
    }
  }

static Matrix4? _parseMatrix4(String? matrixString) {
  if (matrixString == null) return Matrix4.identity();
  final values = matrixString.split(',').map(double.parse).toList();
  if (values.length == 16) {
    return Matrix4.fromList(values);
  }
  // Return identity matrix in case of error
  return Matrix4.identity();
}


  static BoxDecoration _parseBoxDecoration(
      Map<String, dynamic>? decorationProps) {
    if (decorationProps == null) return const BoxDecoration();
    return BoxDecoration(
      color: _parseColor(decorationProps['color']),
      borderRadius: decorationProps['borderRadius'] != null
          ? BorderRadius.circular(double.tryParse(
                  decorationProps['borderRadius']?.toString() ?? '0') ??
              0)
          : null,
      boxShadow: decorationProps['boxShadow'] != null
          ? [_parseBoxShadow(decorationProps['boxShadow'])]
          : null,
      // Add more decoration properties if needed
    );
  }

  static BoxShadow _parseBoxShadow(Map<String, dynamic> shadowProps) {
    return BoxShadow(
      color: _parseColor(shadowProps['color']) ?? Colors.black,
      offset: Offset(
        double.tryParse(shadowProps['offsetX']?.toString() ?? '0') ?? 0,
        double.tryParse(shadowProps['offsetY']?.toString() ?? '0') ?? 0,
      ),
      blurRadius:
          double.tryParse(shadowProps['blurRadius']?.toString() ?? '0') ?? 0,
    );
  }

  static WidgetDescription _getWidgetDescription(dynamic child) {
    if (child is XmlElement) {
      return WidgetDescription.fromXml(child);
    } else if (child is Map<String, dynamic>) {
      return WidgetDescription.fromJson(child);
    } else {
      throw Exception('Unsupported child format');
    }
  }
  
// Parsing alignment
static CrossAxisAlignment _parseCrossAxisAlignment(String? alignment) {
  switch (alignment) {
    case 'start':
      return CrossAxisAlignment.start;
    case 'end':
      return CrossAxisAlignment.end;
    case 'center':
      return CrossAxisAlignment.center;
    case 'stretch':
      return CrossAxisAlignment.stretch;
    default:
      return CrossAxisAlignment.center;
  }
}

// Parsing main axis alignment
static MainAxisAlignment _parseMainAxisAlignment(String? alignment) {
  switch (alignment) {
    case 'start':
      return MainAxisAlignment.start;
    case 'end':
      return MainAxisAlignment.end;
    case 'center':
      return MainAxisAlignment.center;
    case 'spaceBetween':
      return MainAxisAlignment.spaceBetween;
    case 'spaceAround':
      return MainAxisAlignment.spaceAround;
    case 'spaceEvenly':
      return MainAxisAlignment.spaceEvenly;
    default:
      return MainAxisAlignment.start;
  }
}

// Parsing main axis size
static MainAxisSize _parseMainAxisSize(String? size) {
  switch (size) {
    case 'min':
      return MainAxisSize.min;
    case 'max':
      return MainAxisSize.max;
    default:
      return MainAxisSize.max;
  }
}



}
