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
      title: 'Banking App Home UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Banking App Home UI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

 Container(
  child: ElevatedButton(
    onPressed: () {
      print('Elevated Button Pressed');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFFF5733),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
    ),
    child: Text(
      'Click Me',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  ),
),

              DynamicWidgetBuilder.buildFromXml('''
                                
               
                    
                        <Column>

<!-- Header Section -->
  <Container padding="16,16,16,16" color="#2196F3" borderRadius="8">
    <Center>
      <Text text="Dynamic Flutter App" fontSize="17" color="#FFFFFF" fontWeight="bold" />
    </Center>
  </Container>

    

<Container padding="16,16,16,16" color="#FFCC80" borderRadius="12" height="20">
                  
        <Center>
            <Text text="Hello, Flutter Enthusiast" fontSize="16" color="#FFFFFF" />
        </Center>
      
    
</Container>

  <!-- Welcome Message Section -->
  <Container padding="12,12,12,12" color="#FFC107" borderRadius="20" margin="10,0,10,0" height="50">
  <Center>
      <Text text="Let's build stunning UIs dynamically." fontSize="14" color="#FFFFFF" />
  </Center>
   
  </Container>

 <!-- Grid View Section -->


 <Container padding="16,16,16,16" color="#FFFFFF" borderRadius="12" height="20">
                  
        <Center>
            <Text text="Hello, Flutter Enthusiast" fontSize="16" color="#FFFFFF" />
        </Center>
      
    
</Container>






 <Container padding="16,16,16,16" color="#FFFFFF" borderRadius="12" height="20">
                  
        <Center>
            <Text text="Hello, Flutter Enthusiast" fontSize="16" color="#FFFFFF" />
        </Center>
      
    
</Container>



<Container padding="16,16,16,16" height="220">

 

  </Container>
  

  
 




<Container padding="16,16,16,16" height="220">

 <FloatingActionButton 
        onPressed="showModalBottomSheet(context: context, builder: (BuildContext context) => Container(padding: EdgeInsets.all(16), child: Column(mainAxisSize: MainAxisSize.min, children: [ListTile(leading: Icon(Icons.add), title: Text('Add New'), onTap: () { Navigator.pop(context); }), ListTile(leading: Icon(Icons.edit), title: Text('Edit'), onTap: () { Navigator.pop(context); }), ListTile(leading: Icon(Icons.delete), title: Text('Delete'), onTap: () { Navigator.pop(context); }),])));" 
        backgroundColor="#FFFF4081" 
  />

  </Container>





  <!-- Transaction History Section -->
    
       
        <SingleChildScrollView>
            <Column>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="FRANKLINE ..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 2000.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 12:31 PM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="SILAS SHIM..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 100.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 10:03 AM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="FRANKLINE ..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 2000.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 12:31 PM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="COLLINS OK..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 11500.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 12:30 PM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="SILAS SHIM..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 100.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 10:03 AM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="SILAS SHIM..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 100.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 10:03 AM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="FRANKLINE ..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 2000.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 12:31 PM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="COLLINS OK..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 11500.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 12:30 PM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
                <Row mainAxisAlignment="spaceBetween">
                    <Text text="SILAS SHIM..." fontSize="16" color="#000000" />
                    <Column crossAxisAlignment="end">
                        <Text text="- KES 100.0" fontSize="16" color="#F44336" />
                        <Text text="September 9, 2024 10:03 AM" fontSize="12" color="#A1887F" />
                    </Column>
                </Row>
            </Column>
        </SingleChildScrollView>


        <Container padding="16,16,16,16" color="#FFFFFF" borderRadius="12" height="40">
    <Column>                
        <SizedBox height="50" width="80">
            <Text text=" " fontSize="16" color="#FFFFFF" />
        </SizedBox>

    </Column>
</Container>








<Container margin="10,0,10,0">
  <GridView crossAxisCount="2" mainAxisSpacing="10" crossAxisSpacing="10" childAspectRatio="1" height="300">
    
    <!-- Check Balance -->
    <Container color="#E91E63" padding="10,10,10,10" borderRadius="10">
      <Column>
        <Expanded>
          <Icon icon="Icons.person" size="30" color="#FFFFFF"/>
        </Expanded>
        <Center>
          <Text text="Check Balance" fontSize="16" color="#FFFFFF" />
        </Center>
      </Column>
    </Container>
    
    <!-- Transfer Funds -->
    <Container color="#4CAF50" padding="10,10,10,10" borderRadius="10">
      <Column>
        <Expanded>
          <Icon icon="Icons.shopping_cart" size="30" color="#FFFFFF"/>
        </Expanded>
        <Center>
          <Text text="Transfer Funds" fontSize="16" color="#FFFFFF" />
        </Center>
      </Column>
    </Container>
    
    <!-- Pay Bills -->
    <Container color="#FF9800" padding="10,10,10,10" borderRadius="10">
      <Column>
        <Expanded>
          <Icon icon="Icons.home" size="30" color="#FFFFFF"/>
        </Expanded>
        <Center>
          <Text text="Pay Bills" fontSize="16" color="#FFFFFF" />
        </Center>
      </Column>
    </Container>
    
    <!-- Transaction History -->
    <Container color="#3F51B5" padding="10,10,10,10" borderRadius="10">
      <Column>
        <Expanded>
          <Icon icon="Icons.thumb_up" size="30" color="#FFFFFF"/>
        </Expanded>
        <Center>
          <Text text="Transaction History" fontSize="16" color="#FFFFFF" />
        </Center>
      </Column>
    </Container>

  </GridView>
</Container>








            <Row mainAxisAlignment="spaceAround" padding="16,16,16,16">
        <Container>
            <Column>
                <Text text="Button 1" fontSize="14" color="#000000"/>
                <Container color="#FF5722" padding="8,8,8,8" borderRadius="30">
                    <Text text="Round Button 1" color="#FFFFFF"/>
                </Container>
            </Column>
        </Container>

        <Container>
            <Column>
                <Text text="Button 2" fontSize="14" color="#000000"/>
                <Container color="#03A9F4" padding="8,8,8,8">
                    <Text text="Round Button 2" color="#FFFFFF"/>
                </Container>
            </Column>
        </Container>

        <Container>
            <Column>
                <Text text="Button 3" fontSize="14" color="#000000"/>
                <Container color="#4CAF50" padding="8,8,8,8">
                    <Text text="Round Button 3" color="#FFFFFF"/>
                </Container>
            </Column>
        </Container>


    </Row>




        <Container padding="16,16,16,16" color="#FFFFFF" borderRadius="12" height="40">
    <Column>                
        <SizedBox height="50" width="80">
            <Text text=" " fontSize="16" color="#FFFFFF" />
        </SizedBox>

    </Column>
</Container>








    

                            <!-- Account Balance Card -->
                            <Container padding="16,16,16,16" color="#F0F0F0">
                                <Column>
                                    <Text text="Total Balance" fontSize="18" color="#000000" />
                                    <Text text="5,400.25" fontSize="28" color="#4CAF50" />
                                    <Row>
                                        <Text text="Primary Checking" fontSize="14" color="#000000" />
                                    </Row>
                                </Column>
                            </Container>


                            


                            
                            <!-- Action Buttons for Transfers and Payments -->


                            
                            <Row mainAxisAlignment="spaceAround" padding="16,16,16,16">
                                <Container>
                                    <Column>
                                        <Text text="Transfer" fontSize="14" color="#000000"/>
                                        <Container color="#FF5722" padding="8,8,8,8">
                                            <Text text="Send Money" color="#FFFFFF"/>
                                        </Container>
                                    </Column>
                                </Container>

                                <Container>
                                    <Column>
                                        <Text text="Pay Bill" fontSize="14" color="#000000"/>
                                        <Container color="#03A9F4" padding="8,8,8,8">
                                            <Text text="Pay Now" color="#FFFFFF"/>
                                        </Container>
                                    </Column>
                                </Container>
                            </Row>

                            <!-- Transaction History -->
                            <Container padding="16,16,16,16" color="#F0F0F0">
                                <Column>
                                    <Text text="Recent Transactions" fontSize="18" color="#000000" />
                                    <Column>
                                        <Row>
                                            <Text text="Grocery Store" fontSize="14" color="#000000" />
                                            <Text text="50.00" fontSize="14" color="#F44336" />
                                        </Row>
                                        <Row>
                                            <Text text="Electric Bill" fontSize="14" color="#000000" />
                                            <Text text="120.00" fontSize="14" color="#F44336" />
                                        </Row>
                                    </Column>
                                </Column>
                            </Container>

                        </Column>
                    
                
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
  "type": "SingleChildScrollView",
  "properties": {
    "child": {
      "type": "Column",
      "properties": {
        "children": [
          {
            "type": "TextButton",
            "properties": {
              "text": "Home",
              "backgroundColor": "#FFEB3B",
              "padding": "8,8,8,8",
              "onPressed": "function() { print('Home button pressed'); }",
              "icon": {
                "type": "Icon",
                "properties": {
                  "icon": "Icons.home",
                  "color": "#000000",
                  "size": 24
                }
              }
            }
          },
          {
            "type": "TextButton",
            "properties": {
              "text": "Star",
              "backgroundColor": "#FF5722",
              "padding": "8,8,8,8",
              "onPressed": "function() { print('Star button pressed'); }",
              "icon": {
                "type": "Icon",
                "properties": {
                  "icon": "Icons.star",
                  "color": "#FFFFFF",
                  "size": 24
                }
              }
            }
          },
          {
            "type": "TextButton",
            "properties": {
              "text": "Favorite",
              "backgroundColor": "#4CAF50",
              "padding": "8,8,8,8",
              "onPressed": "function() { print('Favorite button pressed'); }",
              "icon": {
                "type": "Icon",
                "properties": {
                  "icon": "Icons.favorite",
                  "color": "#FFFFFF",
                  "size": 24
                }
              }
            }
          },
          {
            "type": "TextButton",
            "properties": {
              "text": "Settings",
              "backgroundColor": "#2196F3",
              "padding": "8,8,8,8",
              "onPressed": "function() { print('Settings button pressed'); }",
              "icon": {
                "type": "Icon",
                "properties": {
                  "icon": "Icons.settings",
                  "color": "#FFFFFF",
                  "size": 24
                }
              }
            }
          },
          {
            "type": "TextButton",
            "properties": {
              "text": "Info",
              "backgroundColor": "#9C27B0",
              "padding": "8,8,8,8",
              "onPressed": "function() { print('Info button pressed'); }",
              "icon": {
                "type": "Icon",
                "properties": {
                  "icon": "Icons.info",
                  "color": "#FFFFFF",
                  "size": 24
                }
              }
            }
          }
        
        ]
      }
    }
  }
}




              ''')
             ] // Assuming jsonData is defined elsewhere
          ),
        ),
      ),
    );
  }
}
