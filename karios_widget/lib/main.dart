import 'package:flutter/material.dart';
import 'package:dynamic_widget_builder/dynamic_widget_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic Widget Builder Test'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'XML Input',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              DynamicWidgetBuilder.buildFromXml('''

  
   <GridView crossAxisCount="3" mainAxisSpacing="10" crossAxisSpacing="10" childAspectRatio="1" height="300">
  <Container color="#FFEB3B" padding="10,10,10,10">
    <Center>
      <Text text="Grid Item 1" color="#000000"/>
    </Center>
  </Container>
  <Container color="#FF5722" padding="10,10,10,10">
    <Center>
      <Text text="Grid Item 2" color="#FFFFFF"/>
    </Center>
  </Container>
  <Container color="#4CAF50" padding="10,10,10,10">
    <Center>
      <Text text="Grid Item 3" color="#FFFFFF"/>
    </Center>
  </Container>
  <Container color="#2196F3" padding="10,10,10,10">
      <Center>
        <Text text="Grid Item 4" color="#FFFFFF"/>
      </Center>
    </Container>
    <Container color="#9C27B0" padding="10,10,10,10">
      <Center>
        <Text text="Grid Item 5" color="#FFFFFF"/>
      </Center>
    </Container>
    <Container color="#FF9800" padding="10,10,10,10">
      <Center>
        <Text text="Grid Item 6" color="#000000"/>
      </Center>
    </Container>

</GridView>




   




              '''),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'JSON Input',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              DynamicWidgetBuilder.buildFromJson('''

{
  "type": "GridView",
  "properties": {
    "crossAxisCount": 2,
    "mainAxisSpacing": 10,
    "crossAxisSpacing": 10,
    "height": 400,
    "children": [
      {
        "type": "Container",
        "properties": {
          "color": "#FFEB3B",
          "padding": "10,10,10,10",
          "child": {
            "type": "Stack",
            "properties": {
              "alignment": "center",
              "children": [
                {
                  "type": "Container",
                  "properties": {
                    "color": "#FFC107",
                    "width": 100,
                    "height": 100,
                    "child": {
                      "type": "Text",
                      "properties": {
                        "text": "Grid Item 1",
                        "color": "#FFFFFF",
                        "fontSize": 16
                      }
                    }
                  }
                },
                {
                  "type": "Positioned",
                  "properties": {
                    "right": 0,
                    "top": 0,
                    "child": {
                      "type": "Container",
                      "properties": {
                        "color": "#03A9F4",
                        "width": 30,
                        "height": 30,
                        "child": {
                          "type": "Text",
                          "properties": {
                            "text": "P1",
                            "color": "#FFFFFF",
                            "fontSize": 12
                          }
                        }
                      }
                    }
                  }
                }
              ]
            }
          }
        }
      },
      {
        "type": "Container",
        "properties": {
          "color": "#E91E63",
          "padding": "10,10,10,10",
          "child": {
            "type": "Stack",
            "properties": {
              "alignment": "bottomRight",
              "children": [
                {
                  "type": "Container",
                  "properties": {
                    "color": "#9C27B0",
                    "width": 100,
                    "height": 100,
                    "child": {
                      "type": "Text",
                      "properties": {
                        "text": "Grid Item 2",
                        "color": "#FFFFFF",
                        "fontSize": 16
                      }
                    }
                  }
                },
                {
                  "type": "Positioned",
                  "properties": {
                    "left": 10,
                    "bottom": 10,
                    "child": {
                      "type": "Container",
                      "properties": {
                        "color": "#FF5722",
                        "width": 50,
                        "height": 50,
                        "child": {
                          "type": "Text",
                          "properties": {
                            "text": "P2",
                            "color": "#FFFFFF",
                            "fontSize": 12
                          }
                        }
                      }
                    }
                  }
                }
              ]
            }
          }
        }
      },
      {
        "type": "Container",
        "properties": {
          "color": "#4CAF50",
          "padding": "10,10,10,10",
          "child": {
            "type": "Stack",
            "properties": {
              "alignment": "topLeft",
              "children": [
                {
                  "type": "Container",
                  "properties": {
                    "color": "#8BC34A",
                    "width": 100,
                    "height": 100,
                    "child": {
                      "type": "Text",
                      "properties": {
                        "text": "Grid Item 3",
                        "color": "#FFFFFF",
                        "fontSize": 16
                      }
                    }
                  }
                },
                {
                  "type": "Positioned",
                  "properties": {
                    "left": 20,
                    "top": 20,
                    "child": {
                      "type": "Container",
                      "properties": {
                        "color": "#CDDC39",
                        "width": 40,
                        "height": 40,
                        "child": {
                          "type": "Text",
                          "properties": {
                            "text": "P3",
                            "color": "#FFFFFF",
                            "fontSize": 12
                          }
                        }
                      }
                    }
                  }
                }
              ]
            }
          }
        }
      },
      {
        "type": "Container",
        "properties": {
          "color": "#009688",
          "padding": "10,10,10,10",
          "child": {
            "type": "Stack",
            "properties": {
              "alignment": "topRight",
              "children": [
                {
                  "type": "Container",
                  "properties": {
                    "color": "#00BCD4",
                    "width": 100,
                    "height": 100,
                    "child": {
                      "type": "Text",
                      "properties": {
                        "text": "Grid Item 4",
                        "color": "#FFFFFF",
                        "fontSize": 16
                      }
                    }
                  }
                },
                {
                  "type": "Positioned",
                  "properties": {
                    "right": 10,
                    "top": 10,
                    "child": {
                      "type": "Container",
                      "properties": {
                        "color": "#FF9800",
                        "width": 30,
                        "height": 30,
                        "child": {
                          "type": "Text",
                          "properties": {
                            "text": "P4",
                            "color": "#FFFFFF",
                            "fontSize": 12
                          }
                        }
                      }
                    }
                  }
                }
              ]
            }
          }
        }
      }
    ]
  }
}





              '''),
            ],
          ),
        ),
      ),
    );
  }
}