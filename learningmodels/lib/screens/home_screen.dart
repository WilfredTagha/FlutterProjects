import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learningmodels/models/users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Rest API Call")),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user.gender;
            final color = user.gender == "male" ? Colors.blue : Colors.green;
            final phone = user.phone;
            final name = user.name;
            //  final name = "${user["first"]} ${user["name"]["last"]}";
            // final imageurl = user["picture"]["thumbnail"];
            return ListTile(
              tileColor: color,

              title: Text("${name.title} ${name.first} ${name.last}"),
              // leading: ClipRRect(
              //   borderRadius: BorderRadius.circular(100),
              //   child: Image.network(imageurl),
              // ),
              subtitle: Text(phone),
            );
          }),
    );
  }

  void fetchUsers() async {
    print("fetch Users Called");
    const url = 'https://randomuser.me/api/?results=5';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e) {
      final name = UserName(
          title: e['name']['title'],
          first: e['name']['first'],
          last: e['name']['last']);
      return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        phone: e['phone'],
        nat: e['nat'],
        name: name,
      );
    }).toList();
    setState(() {
      users = transformed;
    });
    print("fetch Users Complete");
  }
}
