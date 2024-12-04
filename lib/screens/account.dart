import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil("login", (route) => false);
          },
          child: Text(
            'Log out',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(110, 30),
              backgroundColor: Color(0xFF379AE6)),
        ),
      ),
    );
  }
}
