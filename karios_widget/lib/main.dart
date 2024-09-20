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
      title: 'Chat UI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ChatHomePage(),
    );
  }
}

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({Key? key}) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _screens(BuildContext context) => [
    // Home Screen - XML Input for top part + JSON Input for bottom part
    Column(
      children: [
        Expanded(
          flex: 1,
          child: DynamicWidgetBuilder.buildFromXml('''
<Column>
 
  <Container height="60" color="#008080" padding="8,8,8,8">
    <Center>
      <Text text="Conversations" fontSize="20" color="#FFFFFF" fontWeight="bold" />
    </Center>
  </Container>
  
   <Container height="50" padding="8,8,8,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#c7d1cb"}'>
    <Row>
      <Icon icon="Icons.search" color="#000000" size="24" />
      <SizedBox width="10" />
      <Text text="Search" fontSize="14" color="#000000" />
    </Row>
  </Container>
  
</Column>
          ''', context),
        ),
        Expanded(
          flex: 4,
          child: DynamicWidgetBuilder.buildFromJson('''
{
  "type": "Column",
  "properties": {
    "children": [
      {
        "type": "Expanded",
        "properties": {
          "child": {
            "type": "ListView",
            "properties": {
              "padding": "5,8,5,8",
              "children": [
                {
                  "type": "Container",
                  "properties": {
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#607D8B",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Center",
                      "properties": {
                        "child": {
                          "type": "Text",
                          "properties": {
                            "text": "Settings",
                            "fontSize": 18,
                            "color": "#FFFFFF"
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
          ''', context),
        ),
      ],
    ),



        // Main Conversation Screen - XML Input
    DynamicWidgetBuilder.buildFromXml('''
<Column>


  <Container height="60" color="#20B2AA" padding="16,16,16,16">
   
    <Center>
      <Text text="Chatting with Kipii" fontSize="20" color="#FFFFFF" fontWeight="bold" />
    </Center>
  </Container>


   <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>


      // Start of Selection
      <Container height="600" color="#808080" padding="16,16,16,16" >
  <Column>
  

  
     
<Container padding="290,10,10,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>
        

    <Container height="60" padding="0,8,50,8" margin="160,5,5,5" decoration='{"borderRadius": {"topLeft": 20, "bottomLeft": 20, "bottomRight": 20}, "color": "transparent", "border": {"color": "#FFA500", "width": 2}}'>
       <Text text="Hello Kipii" fontSize="15" color="#FFFFFF" fontWeight="normal"  margin="50,0,0,0" />
  </Container>

  <Container padding="10,10,290,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>

   <Container height="60" padding="0,8,50,8" margin="5,5,100,5" decoration='{"borderRadius": {"topRight": 20, "bottomLeft": 20, "bottomRight": 20}, "color": "transparent", "border": {"color": "#FFFFFF", "width": 2}}'>
   <Text text="Hello, whats up?" fontSize="15" color="#FFFFFF" fontWeight="normal" />
    
  </Container>

  <Container padding="310,10,10,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>

   <Container height="60" padding="0,8,50,8" margin="100,5,5,5" decoration='{"borderRadius": {"topLeft": 20, "bottomLeft": 20, "bottomRight": 20}, "color": "transparent", "border": {"color": "#FFA500", "width": 2}}'>
       <Text text="What is the progress?" fontSize="15" color="#FFFFFF" fontWeight="normal"  margin="50,0,0,0" />
  </Container>

  <Container padding="10,10,290,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>



   <Container height="60" padding="10,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": {"topRight": 20, "bottomLeft": 20, "bottomRight": 20}, "color": "transparent", "border": {"color": "#FFFFFF", "width": 2}}'>
       <Text text="Still working on the project testing and debugging" fontSize="15" color="#FFFFFF" fontWeight="normal" textAlign="left"  />
  </Container>


  <Container padding="290,10,10,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>



   <Container height="60" padding="10,8,50,8" margin="75,5,5,5" decoration='{"borderRadius": {"topLeft": 20, "bottomLeft": 20, "bottomRight": 20}, "color": "transparent", "border": {"color": "#FFA500", "width": 2}}'>
   <Text text="When is the estimate time you will be done with the project?" fontSize="15" color="#FFFFFF" fontWeight="normal" />
  </Container>


 </Column>
  
  </Container>

  <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>



  
  <Container>
    <padding>8,8,8,8</padding>
    <color>#F0F8FF</color>
    <child>
      <Row>
        <children>
          <Expanded>
            <child>
              <TextField>
                <decoration>
                  <hintText>Type a message</hintText>
                  <border>OutlineInputBorder</border>
                </decoration>
              </TextField>
            </child>
          </Expanded>
          <IconButton>
            <icon>send</icon>
            <color>#20B2AA</color>
            <onPressed>printMessage</onPressed>
          </IconButton>
        </children>
      </Row>
    </child>
  </Container>



</Column>
    ''', context),

    // Conversations List Screen - XML Input
   Column(
      children: [
        Expanded(
          flex: 1,
          child: DynamicWidgetBuilder.buildFromXml('''
<Column>
 
  <Container height="60" color="#008080" padding="8,8,8,8">
    <Center>
      <Text text="Groups" fontSize="20" color="#FFFFFF" fontWeight="bold" />
    </Center>
  </Container>
  
   <Container height="50" padding="8,8,8,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#c7d1cb"}'>
    <Row>
      <Icon icon="Icons.search" color="#000000" size="24" />
      <SizedBox width="10" />
      <Text text="Search Groups" fontSize="14" color="#000000" />
    </Row>
  </Container>
  
</Column>
          ''', context),
        ),
        Expanded(
          flex: 4,
          child: DynamicWidgetBuilder.buildFromJson('''
{
  "type": "Column",
  "properties": {
    "children": [
      {
        "type": "Expanded",
        "properties": {
          "child": {
            "type": "ListView",
            "properties": {
              "padding": "5,8,5,8",
              "children": [
                    {
                      "type": "Container",
                      "properties": {
                        "height": 80,
                        "margin": "0,0,0,16",
                        "decoration": {
                          "color": "#16a085",
                          "borderRadius": 10
                        },
                        "child": {
                          "type": "Row",
                          "properties": {
                            "children": [
                              {
                                "type": "Expanded",
                                "properties": {
                                  "flex": 1,
                                  "child": {
                                    "type": "Icon",
                                    "properties": {
                                      "icon": "Icons.group",
                                      "color": "#FFFFFF",
                                      "size": 30
                                    }
                                  }
                                }
                              },
                              {
                                "type": "RotatedBox",
                                "properties": {
                                  "quarterTurns": 2,
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "height": 30,
                                      "width": 1,
                                      "color": "#FFFFFF"
                                    }
                                  }
                                }
                              },
                              {
                                "type": "Expanded",
                                "properties": {
                                  "flex": 4,
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "10,0,10,0",
                                      "child": {
                                        "type": "Container",
                                        "properties": {
                                          "padding": "0,0,0,0",
                                          "child": {
                                            "type": "Column",
                                            "properties": {
                                              "mainAxisAlignment": "spaceEvenly",
                                              "crossAxisAlignment": "start",
                                              "children": [
                                                {
                                                  "type": "Text",
                                                  "properties": {
                                                    "margin": "50,0,40,0",
                                                    "textAlign": "left",
                                                    "text": "Customer Support Group",
                                                    "fontSize": 16,
                                                    "fontWeight": "bold",
                                                    "color": "#FFFFFF",
                                                    "overflow": "ellipsis"
                                                  }
                                                },
                                                {
                                                  "type": "Text",
                                                  "properties": {
                                                    "text": "This is a text message placeholder",
                                                    "fontSize": 17,
                                                    "color": "#FFFFFF",
                                                    "overflow": "ellipsis",
                                                    "maxLines": 1
                                                  }
                                                }
                                              ]
                                            }
                                          }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#16a085",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Row",
                      "properties": {
                        "children": [
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 1,
                              "child": {
                                "type": "Icon",
                                "properties": {
                                  "icon": "Icons.person",
                                  "color": "#FFFFFF",
                                  "size": 30
                                }
                              }
                            }
                          },
                          {
                            "type": "RotatedBox",
                            "properties": {
                              "quarterTurns": 2,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "height": 30,
                                  "width": 1,
                                  "color": "#FFFFFF"
                                }
                              }
                            }
                          },
                          {
                            "type": "Expanded",
                            "properties": {
                              "flex": 4,
                              "child": {
                                "type": "Container",
                                "properties": {
                                  "padding": "10,0,10,0",
                                  "child": {
                                    "type": "Container",
                                    "properties": {
                                      "padding": "0,0,0,0",
                                      "child": {
                                        "type": "Column",
                                        "properties": {
                                          "mainAxisAlignment": "spaceEvenly",
                                          "crossAxisAlignment": "start",
                                          "children": [
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "Japheth Kipii",
                                                "fontSize": 16,
                                                "fontWeight": "bold",
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis"
                                              }
                                            },
                                            {
                                              "type": "Text",
                                              "properties": {
                                                "text": "This is a text message placeholder",
                                                "fontSize": 17,
                                                "color": "#FFFFFF",
                                                "overflow": "ellipsis",
                                                "maxLines": 1
                                              }
                                            }
                                          ]
                                        }
                                      }
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
                    "height": 60,
                    "margin": "0,0,0,16",
                    "decoration": {
                      "color": "#607D8B",
                      "borderRadius": 10
                    },
                    "child": {
                      "type": "Center",
                      "properties": {
                        "child": {
                          "type": "Text",
                          "properties": {
                            "text": "Settings",
                            "fontSize": 18,
                            "color": "#FFFFFF"
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
          ''', context),
        ),
      ],
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat UI'),
      ),
      body: _screens(context)[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Conversations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          )
        ],
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}