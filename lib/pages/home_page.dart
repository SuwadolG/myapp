import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void signUserout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: signUserout,
          icon: Icon(Icons.logout),
        )
      ]),
      body: Center(
          child: Text(
        "LOGGEN IN! AS" + user.email!,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
