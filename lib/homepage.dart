// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:pageroute_apicall/Pages/Page2.dart';

// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   _Page1State createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   final TextEditingController _textController = TextEditingController();
//   String apiData = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: [
//                 ListTile(
//                   title: Text(apiData),
//                 ),
//               ],
//             ),
//           ),
//           TextField(
//             controller: _textController,
//             decoration: const InputDecoration(
//               hintText: 'Enter your message here',
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               String name = _textController.text;
//               fetchdata();
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) => Page2(name: name),
//               //   ),
//               // );
//             },
//             child: const Text('Send Message'),
//           ),
//         ],
//       ),
//     );
//   }

//   void fetchdata() async {
//     const url = 'https://randomuser.me/api/';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final data = response.body;
//     final body = jsonDecode(data);
//     setState(() {
//       apiData = body["results"].toString();
//     });
//   }
// }
