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
              DynamicWidgetBuilder.buildFromXml('''
                                
               
                    
                        <Column>


                           <Container padding="16,16,16,16" color="#FFCC80" borderRadius="12">
    <Column>
        <Text text="Good afternoon, Emmanuel" fontSize="18" color="#FFFFFF" />
        <Text text="Account Balance" fontSize="14" color="#A1887F" />
        
        
        <SizedBox height="50" width="80">
                 
                <Text text="55,690" fontSize="16" color="#FFFFFF" />
                
            
        </SizedBox>

        <Row>
            <Text text="Account No. " fontSize="14" color="#A1887F" />
            <Text text=" 46012000015041" fontSize="16" color="#FFFFFF" />
            <IconButton icon="Icons.copy" color="#FFFFFF" />
        </Row>
    </Column>
</Container>

<Container padding="16,16,16,16" color="#FFCC80" borderRadius="12" height="40">
    <Column>                
        <SizedBox height="50" width="80">
            <Text text=" " fontSize="16" color="#FFFFFF" />
        </SizedBox>

    </Column>
</Container>


        






  <!-- Transaction History Section -->
    
       
        <Column>
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


        <Container padding="16,16,16,16" color="#FFFFFF" borderRadius="12" height="40">
    <Column>                
        <SizedBox height="50" width="80">
            <Text text=" " fontSize="16" color="#FFFFFF" />
        </SizedBox>

    </Column>
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
            ],
          ),
        ),
      ),
    );
  }
}
