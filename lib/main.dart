import 'package:flutter/material.dart';
//import 'package:pageroute_apicall/Pages/homepage.dart';
import 'users.dart';

void main() {
  runApp( MaterialApp(
    //debugShowCheckedModeBanner:false
    title: 'Api calling',
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
   Page1({Key? key}) : super(key: key);

  final TextEditingController _inputController =
      TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vipul Page routing and Api call'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Send data'),
              onPressed: () {
                String inputText = _inputController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenerateUsers(input: inputText),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});

//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }
// This class holds the data related to the Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   Create a text controller and use it to retrieve the current value
//   of the TextField.
//   final myController = TextEditingController();

//   @override
//   void dispose() {
//      Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//      Fill this out in the next step.
//   }
// }


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

