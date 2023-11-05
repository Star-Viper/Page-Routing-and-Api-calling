//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:http/http.dart' as http;
//import 'package:pageroute_apicall/main.dart';
//import 'package:web_socket_channel/io.dart';
//import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
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
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route and Api call Successful !!!'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
