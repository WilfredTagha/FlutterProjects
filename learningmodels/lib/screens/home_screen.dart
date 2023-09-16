import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
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
            final email = user["email"];
            final name = "${user["name"]["first"]} ${user["name"]["last"]}";
            final imageurl = user["picture"]["thumbnail"];
            return ListTile(
              title: Text(name),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(imageurl),
              ),
              subtitle: Text(email),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
      ),
    );
  }

  void fetchUsers() async {
    print("fetch Users Called");
    const url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print("fetch Users Complete");
  }
}
