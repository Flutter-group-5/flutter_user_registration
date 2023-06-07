import 'package:flutter/material.dart';

class UserCreatedScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final Function clearFieldsCallback;

  const UserCreatedScreen({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.clearFieldsCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Welcome, $firstName $lastName!',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 9.0),
          const Text(
            'Your account has been created with the email address:',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 17.0,
            ),
          ),
          const SizedBox(height: 9.0),
          Text(
            email,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              clearFieldsCallback();
              Navigator.pop(context);
            },
            child: const Text('Back to Create User'),
          ),
        ],
      ),
    );
  }
}
