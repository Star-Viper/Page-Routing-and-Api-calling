import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:main.dart';

class GenerateUsers extends StatefulWidget {
  final String input;

  const GenerateUsers({Key? key, required this.input}) : super(key: key);

  @override
  State<GenerateUsers> createState() => _GenerateUsersState();
}
class _GenerateUsersState extends State<GenerateUsers> {
  late Future<List<dynamic>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = fetchData(widget.input);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vipul Page routing and Api call'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final futureUsers = snapshot.data;
            return ListView.builder(
              itemCount: futureUsers!.length,
              itemBuilder: (BuildContext context, index) {
                int number = index + 1;
                final title = futureUsers[index]["name"]["title"];
                final first = futureUsers[index]["name"]["first"];
                final last = futureUsers[index]["name"]["last"];
                final email = futureUsers[index]["email"];
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 30,
                        width: 30,
                        padding: const EdgeInsets.all(5),
                        color: Colors.blue.shade100,
                        child: Center(child: Text(number.toString())),
                      ),
                    ),
                    title: Text(title + " " + first + " " + last),
                    subtitle: Text(email),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<dynamic>> fetchData(String input) async {
    final url = "https://randomuser.me/api/?results=$input";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final data = response.body;
    final body = jsonDecode(data);
    final users = body["results"];
    return users;
  }
}
