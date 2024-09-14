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
      title: ' Example App UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example App UI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

 

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



  <!-- Transaction History Section -->
    
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




 <Container padding="16,16,16,16" color="#FFFFFF" borderRadius="12" height="20">
                  
        <Center>
            <Text text="Hello, Flutter Enthusiast" fontSize="16" color="#FFFFFF" />
        </Center>
      
    
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



                            <Container padding="16,16,16,16" height="220" color="#808080">

 <FloatingActionButton 
        onPressed="showModalBottomSheet(context: context, builder: (BuildContext context) => Container(padding: EdgeInsets.all(16), child: Column(mainAxisSize: MainAxisSize.min, children: [ListTile(leading: Icon(Icons.add), title: Text('Add New'), onTap: () { Navigator.pop(context); }), ListTile(leading: Icon(Icons.edit), title: Text('Edit'), onTap: () { Navigator.pop(context); }), ListTile(leading: Icon(Icons.delete), title: Text('Delete'), onTap: () { Navigator.pop(context); }),])));" 
        backgroundColor="#FFFF4081" 
  />

  </Container>


  <Container padding="16,16,16,16" height="100" color="#809090">

                          <!-- FloatingActionButton example -->
    <FloatingActionButton onPressed="showSnackBar(context: context, message: 'FloatingActionButton pressed!')" backgroundColor="#FFFF4081" icon="Icons.add" />

   

   </Container> 


   <Container padding="16,16,16,16" height="100" color="#809298">

    <!-- TextButton example -->
    <TextButton onPressed="showAlert(context: context, title: 'TextButton', message: 'You pressed the TextButton')" text="Click Me" textColor="#0000FF" fontSize="16" />  

   </Container>

   <Container padding="16,16,16,16" height="100" color="#989298">

    <!-- ElevatedButton example -->
    <ElevatedButton onPressed="navigate(context: context, route: '/details')" text="Go to Details" backgroundColor="#FF9800" textColor="#FFFFFF" fontSize="18" borderRadius="8" elevation="4" />

   </Container>  

   <Container padding="16,16,16,16" height="100" color="#939210">

 <!-- OutlinedButton example -->
    <OutlinedButton onPressed="logMessage(message: 'OutlinedButton pressed!')" text="Press Me" textColor="#000000" fontSize="16" borderRadius="8" />

   </Container>  

     <Container padding="16,16,16,16" height="100" color="#838990">

  <!-- IconButton example -->
    <IconButton onPressed="showSnackBar(context: context, message: 'IconButton pressed!')" icon="Icons.home" color="#FFFFFF" size="24" />

   </Container> 



                        </Column>

                        



   
                
              ''', context),

              


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
  "type": "FloatingActionButton",
  "properties": {
    "onPressed": "function() { showModalBottomSheet(context: context, builder: (BuildContext context) { return Container(padding: EdgeInsets.all(16), child: Column(mainAxisSize: MainAxisSize.min, children: [ListTile(leading: Icon(Icons.add), title: Text('Add New'), onTap: () { print('Floating Action Button 1 pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.edit), title: Text('Edit'), onTap: () { print('Floating Action Button 2 pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.delete), title: Text('Delete'), onTap: () { print('Floating Action Button 3 pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.payment), title: Text('Pay Bill'), onTap: () { print('Pay Bill pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.transfer_within_a_station), title: Text('Transfer'), onTap: () { print('Transfer pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.history), title: Text('Transaction History'), onTap: () { print('Transaction History pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.settings), title: Text('Settings'), onTap: () { print('Settings pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.info), title: Text('Info'), onTap: () { print('Info pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.star), title: Text('Favorites'), onTap: () { print('Favorites pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.contact_mail), title: Text('Contacts'), onTap: () { print('Contacts pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.notifications), title: Text('Notifications'), onTap: () { print('Notifications pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.help), title: Text('Help'), onTap: () { print('Help pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.share), title: Text('Share'), onTap: () { print('Share pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.feedback), title: Text('Feedback'), onTap: () { print('Feedback pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.language), title: Text('Language'), onTap: () { print('Language pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.privacy_tip), title: Text('Privacy'), onTap: () { print('Privacy pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.security), title: Text('Security'), onTap: () { print('Security pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.bug_report), title: Text('Report a Bug'), onTap: () { print('Report a Bug pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.update), title: Text('Check for Updates'), onTap: () { print('Check for Updates pressed'); Navigator.pop(context); }), ListTile(leading: Icon(Icons.logout), title: Text('Logout'), onTap: () { print('Logout pressed'); Navigator.pop(context); }),])); }); }",
    "backgroundColor": "#FFFF4081",
    "child": {
      "type": "Icon",
      "properties": {
        "icon": "Icons.add",
        "color": "#FFFFFF",
        "size": 24
      }
    }
  }
}






              ''', context)
             ] // Assuming jsonData is defined elsewhere
          ),
        ),
      ),
    );
  }
}
