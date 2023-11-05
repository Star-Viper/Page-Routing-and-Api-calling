import 'package:flutter/material.dart';
//import 'package:pageroute_apicall/Pages/homepage.dart';
import 'users.dart';

void main() {
  runApp(const MaterialApp(
    //debugShowCheckedModeBanner:false
    title: 'Api calling',
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vipul Page routing and Api call'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Send data'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GenerateUsers(input: '25')), // You can change the input as needed
            );
          },
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Page1(),
//     );
//   }
// }
