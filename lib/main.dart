import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jicky_app/screens/bottomNavigationBar.dart';
import 'package:jicky_app/screens/login.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBcRdtlkGoV0n1M5opeS139cQ9ZTtrBz9U",
      appId: "1:733128683241:android:45babd005322884b578a78",
      messagingSenderId: "733128683241",
      projectId: "smart-wearable-safety-ja-be5a0",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    void initState() {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          print(
              '================= User is currently signed out! ======================');
        } else {
          print(
              '======================= User is signed in! ===========================');
        }
      });
      super.initState();
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirebaseAuth.instance.currentUser == null
            ? login()
            : bottomNavigationBar(),
        routes: {
          "login": (context) => login(),
          "bottomNavigationBar": (context) => bottomNavigationBar(),
        });
  }
}
