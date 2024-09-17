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
    // Conversations List Screen - XML Input
    DynamicWidgetBuilder.buildFromXml('''
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




  
  <Container height="550" padding="16,16,16,16" color="#008080">




   <Column>


     <Container height="65" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
  <Row>
    <SizedBox width="10" />
    <Icon icon="Icons.person" color="#FFFFFF" size="30" />
    <SizedBox width="10" />
    <SizedBox width="250" height="60">
      <Column>
        <Text text="Japheth Kipii" fontSize="16" color="#FFFFFF" fontWeight="bold" textAlign="left"/>
        <Text text="This is a text message placeholder" fontSize="14" color="#FFFFFF"/>
      </Column>
    </SizedBox>
  </Row>
</Container>


     

     <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>

     <Container height="65" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
      <Row>
      <SizedBox width="10" />
        <Icon icon="Icons.person" color="#FFFFFF" size="30" />
        <SizedBox width="10" />
        <SizedBox width="250" height="60">
          
            <Column>
              <Text text="Japheth Kipii" fontSize="16" color="#FFFFFF" fontWeight="bold" textAlign="left"/>
              <Text text="This is a text message placeholder" fontSize="14" color="#FFFFFF"/>
            </Column>
            
        </SizedBox>
      </Row>
     </Container>


      <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>

     <Container height="65" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
      <Row>
      <SizedBox width="10" />
        <Icon icon="Icons.person" color="#FFFFFF" size="30" />
        <SizedBox width="10" />
        <SizedBox width="250" height="60">
          
            <Column>
              <Text text="Japheth Kipii" fontSize="16" color="#FFFFFF" fontWeight="bold" textAlign="left"/>
              <Text text="This is a text message placeholder" fontSize="14" color="#FFFFFF"/>
            </Column>
            
        </SizedBox>
      </Row>
     </Container>

      <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>

     <Container height="65" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
      <Row>
      <SizedBox width="10" />
        <Icon icon="Icons.person" color="#FFFFFF" size="30" />
        <SizedBox width="10" />
        <SizedBox width="250" height="60">
          
            <Column>
              <Text text="Japheth Kipii" fontSize="16" color="#FFFFFF" fontWeight="bold" textAlign="left"/>
              <Text text="This is a text message placeholder" fontSize="14" color="#FFFFFF"/>
            </Column>
            
        </SizedBox>
      </Row>
     </Container>

      <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>

     <Container height="65" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
      <Row>
      <SizedBox width="10" />
        <Icon icon="Icons.person" color="#FFFFFF" size="30" />
        <SizedBox width="10" />
        <SizedBox width="250" height="60">
          
            <Column>
              <Text text="Japheth Kipii" fontSize="16" color="#FFFFFF" fontWeight="bold" textAlign="left"/>
              <Text text="This is a text message placeholder" fontSize="14" color="#FFFFFF"/>
            </Column>
            
        </SizedBox>
      </Row>
     </Container>
      <Container height="10">
       <Divider color="#FFA500" thickness="1" />
     </Container>


     <Container height="65" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
      <Row>
      <SizedBox width="10" />
        <Icon icon="Icons.person" color="#FFFFFF" size="30" />
        <SizedBox width="10" />
        <SizedBox width="250" height="60">
          
            <Column>
              <Text text="Japheth Kipii" fontSize="16" color="#FFFFFF" fontWeight="bold" textAlign="left"/>
              <Text text="This is a text message placeholder" fontSize="14" color="#FFFFFF"/>
            </Column>
            
        </SizedBox>
      </Row>
     </Container>
      <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>




   </Column>

     



    

  
   




  </Container>
</Column>
    ''', context),

    // Main Conversation Screen - XML Input
    DynamicWidgetBuilder.buildFromXml('''
<Column>


  <Container height="60" color="#20B2AA" padding="16,16,16,16">
   
    <Center>
      <Text text="Chat with John" fontSize="20" color="#FFFFFF" fontWeight="bold" />
    </Center>
  </Container>


   <Container height="10">
       <Divider color="#FFFFFF" thickness="1" />
     </Container>


  <Container height="600" color="#343131" padding="16,16,16,16" >
  <Column>


      <Container height="50" padding="8,8,8,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#FFA500"}'>
    <Row>
      <Icon icon="Icons.search" color="#000000" size="24" />
      <SizedBox width="10" />
      <Text text="Search" fontSize="14" color="#000000" />
    </Row>
  </Container>
  

  
    <Row>

    <Container decoration='{"borderRadius": 20, "color": "#FFFFFF", "border": {"color": "#FFFFFF", "width": 2}}'>
         <Icon icon="Icons.person" color="#000000" size="20" />
        </Container>

      
      <Container height="55" padding="250,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#E0FFFF", "border": {"color": "#FFA500", "width": 2}}'>
        
      </Container>
    </Row>
  
<Container padding="290,10,10,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>
        

   <Container height="70" padding="250,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#e2ed98", "border": {"color": "#FFA500", "width": 2}}'>
    
  </Container>

  <Container padding="10,10,10,10" decoration='{"borderRadius": 20}'>
         <Icon icon="Icons.person" color="#FFFFFF" size="20" />
        </Container>

   <Container height="70" padding="250,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#E0FFFF", "border": {"color": "#FFA500", "width": 2}}'>
    
  </Container>

   <Container height="70" padding="250,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#e2ed98", "border": {"color": "#FFA500", "width": 2}}'>
    
  </Container>

   <Container height="70" padding="250,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#E0FFFF", "border": {"color": "#FFA500", "width": 2}}'>
    
  </Container>

   <Container height="70" padding="250,8,50,8" margin="5,5,5,5" decoration='{"borderRadius": 20, "color": "#e2ed98", "border": {"color": "#FFA500", "width": 2}}'>
    
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

Divider(),
    // Groups Screen - XML Input
    DynamicWidgetBuilder.buildFromXml('''
<Column>
  <Container>
    <properties>
      <padding>16,16,16,16</padding>
      <color>#2E8B57</color>
    </properties>
    <child>
      <Center>
        <child>
          <Text>
            <properties>
              <text>Groups</text>
              <fontSize>20</fontSize>
              <color>#FFFFFF</color>
              <fontWeight>bold</fontWeight>
            </properties>
          </Text>
        </child>
      </Center>
    </child>
  </Container>
  
  <ListView>
    <properties>
      <padding>0,0,0,0</padding>
      <scrollDirection>vertical</scrollDirection>
      <shrinkWrap>true</shrinkWrap>
      <height>400</height>
    </properties>
    <children>
      <Row>
        <properties>
          <padding>16,16,16,16</padding>
          <mainAxisAlignment>spaceBetween</mainAxisAlignment>
        </properties>
        <children>
          <Row>
            <children>
              <Icon>
                <properties>
                  <icon>Icons.group</icon>
                  <size>40</size>
                  <color>#000000</color>
                </properties>
              </Icon>
              <SizedBox>
                <properties>
                  <width>10</width>
                </properties>
              </SizedBox>
              <Column>
                <properties>
                  <crossAxisAlignment>start</crossAxisAlignment>
                </properties>
                <children>
                  <Text>
                    <properties>
                      <text>Flutter Devs</text>
                      <fontSize>16</fontSize>
                      <color>#000000</color>
                      <fontWeight>bold</fontWeight>
                    </properties>
                  </Text>
                  <Text>
                    <properties>
                      <text>Join us to discuss Flutter.</text>
                      <fontSize>14</fontSize>
                      <color>#555555</color>
                    </properties>
                  </Text>
                </children>
              </Column>
            </children>
          </Row>
          <Icon>
            <properties>
              <icon>Icons.arrow_forward</icon>
              <color>#888888</color>
              <size>24</size>
            </properties>
          </Icon>
        </children>
      </Row>
      
      <Row>
        <properties>
          <padding>16,16,16,16</padding>
          <mainAxisAlignment>spaceBetween</mainAxisAlignment>
        </properties>
        <children>
          <Row>
            <children>
              <Icon>
                <properties>
                  <icon>Icons.group</icon>
                  <size>40</size>
                  <color>#000000</color>
                </properties>
              </Icon>
              <SizedBox>
                <properties>
                  <width>10</width>
                </properties>
              </SizedBox>
              <Column>
                <properties>
                  <crossAxisAlignment>start</crossAxisAlignment>
                </properties>
                <children>
                  <Text>
                    <properties>
                      <text>Study Group</text>
                      <fontSize>16</fontSize>
                      <color>#000000</color>
                      <fontWeight>bold</fontWeight>
                    </properties>
                  </Text>
                  <Text>
                    <properties>
                      <text>Let's prepare for exams together.</text>
                      <fontSize>14</fontSize>
                      <color>#555555</color>
                    </properties>
                  </Text>
                </children>
              </Column>
            </children>
          </Row>
          <Icon>
            <properties>
              <icon>Icons.arrow_forward</icon>
              <color>#888888</color>
              <size>24</size>
            </properties>
          </Icon>
        </children>
      </Row>
    </children>
  </ListView>
</Column>
    ''', context),
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
          ),
        ],
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}