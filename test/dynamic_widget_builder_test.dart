// import 'package:flutter_test/flutter_test.dart';
// import 'package:dynamic_widget_builder/dynamic_widget_builder.dart';
// import 'package:flutter/material.dart';

// void main() {
//   testWidgets('DynamicWidgetBuilder parses XML correctly', (WidgetTester tester) async {    await tester.pumpWidget(MaterialApp(
//       home: DynamicWidgetBuilder.parse('''
// <Scaffold>
//   <appBar>
//     <AppBar>
//       <title>
//         <Text>XML AppBar</Text>
//       </title>
//     </AppBar>
//   </appBar>
//   <body>
//     <Center>
//       <child>
//         <Column>
//           <children>
//             <Text>Hello from XML!</Text>
//             <Text>Welcome to Dynamic Widget Builder</Text>
//           </children>
//         </Column>
//       </child>
//     </Center>
//   </body>
//   <floatingActionButton>
//     <FloatingActionButton>
//       <child>
//         <Icon>
//           <icon>add</icon>
//           <size>24px</size>
//           <color>ff0000</color>
//         </Icon>
//       </child>
//     </FloatingActionButton>
//   </floatingActionButton>
// </Scaffold>
//       '''),
//     ));

//     expect(find.text('XML AppBar'), findsOneWidget);
//     expect(find.text('Hello from XML!'), findsOneWidget);
//     expect(find.text('Welcome to Dynamic Widget Builder'), findsOneWidget);
//   });

//   testWidgets('DynamicWidgetBuilder parses JSON correctly', (WidgetTester tester) async {
//     await tester.pumpWidget(MaterialApp(
//       home: DynamicWidgetBuilder.parse('''
// {
//   "type": "Scaffold",
//   "properties": {
//     "appBar": {
//       "type": "AppBar",
//       "properties": {
//         "title": {
//           "type": "Text",
//           "properties": {
//             "data": "JSON AppBar",
//             "fontSize": "20.sp"
//           }
//         }
//       }
//     },
//     "body": {
//       "type": "Center",
//       "properties": {
//         "child": {
//           "type": "Column",
//           "properties": {
//             "children": [
//               {
//                 "type": "Text",
//                 "properties": {
//                   "data": "Hello from JSON!",
//                   "fontSize": "16.sp"
//                 }
//               },
//               {
//                 "type": "Text",
//                 "properties": {
//                   "data": "Welcome to Dynamic Widget Builder",
//                   "fontSize": "14.sp"
//                 }
//               }
//             ]
//           }
//         }
//       }
//     },
//     "floatingActionButton": {
//       "type": "FloatingActionButton",
//       "properties": {
//         "child": {
//           "type": "Icon",
//           "properties": {
//             "icon": "add",
//             "size": "24px",
//             "color": "ff0000"
//           }
//         }
//       }
//     }
//   }
// }
//       '''),
//     ));

//     expect(find.text('JSON AppBar'), findsOneWidget);
//     expect(find.text('Hello from JSON!'), findsOneWidget);
//     expect(find.text('Welcome to Dynamic Widget Builder'), findsOneWidget);
//   });
// }
