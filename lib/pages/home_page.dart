import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: signUserOut,
          )
        ],
      ),
      body: Center(
        child: Text(
          'LOGGED IN AS : ${user?.email}',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
