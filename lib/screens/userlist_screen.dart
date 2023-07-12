import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  final List<Map<String, String>> userList = [
    {'name': 'User 1', 'email': 'user1@gmail.com', 'source': 'Organic'},
    {'name': 'User 2', 'email': 'user2@yahoo.com', 'source': 'Facebook'},
    {'name': 'User 3', 'email': 'user3@yahoo.com', 'source': 'Instagram'},
    {'name': 'User 4', 'email': 'user4@yahoo.com', 'source': 'Friend'},
    {'name': 'User 5', 'email': 'user5@yahoo.com', 'source': 'Google'},
  ];

  UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: Column(
        children: [
          // Add filter dropdown and search field widgets here
          Expanded(
            child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                final user = userList[index];
                return ListTile(
                  title: Text(user['name']!),
                  subtitle: Text(user['email']!),
                  trailing: Text(user['source']!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
