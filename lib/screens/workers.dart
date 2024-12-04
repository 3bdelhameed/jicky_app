import 'package:flutter/material.dart';
import 'package:jicky_app/screens/bottomNavigationBar.dart';
import 'package:jicky_app/screens/homepage.dart';
import 'package:jicky_app/screens/location.dart';

class workers extends StatefulWidget {
  const workers({super.key});

  @override
  State<workers> createState() => _workersState();
}

class _workersState extends State<workers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => bottomNavigationBar()),
                );
                ;
              },
              icon: Icon(Icons.arrow_back_ios))),
    );
  }
}
