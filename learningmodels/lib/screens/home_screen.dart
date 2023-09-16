import 'package:flutter/material.dart';

import 'package:learningmodels/models/users.dart';
import 'package:learningmodels/services/user_api.dart';

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
            final name = user.fullName;
            //  final name = "${user["first"]} ${user["name"]["last"]}";
            // final imageurl = user["picture"]["thumbnail"];
            return ListTile(
              tileColor: color,

              title: Text(name),
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
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
