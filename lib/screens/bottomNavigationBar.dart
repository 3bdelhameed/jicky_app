import 'package:flutter/material.dart';
import 'package:jicky_app/screens/account.dart';
import 'package:jicky_app/screens/emergency.dart';
import 'package:jicky_app/screens/homepage.dart';
import 'package:jicky_app/screens/location.dart';
import 'package:jicky_app/screens/notifications.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int selectedIndex = 0;
  List<Widget> pages = [
    Homepage(),
    Location(),
    Notifications(),
    Emergency(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromARGB(139, 159, 190, 212),
        currentIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
        iconSize: 35,
        selectedItemColor: const Color(0xFF2B6EA0),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,),label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),label: '',),
          BottomNavigationBarItem(
              icon: Icon(Icons.headset_mic_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ''),
        ],
      ),
    );
  }
}
