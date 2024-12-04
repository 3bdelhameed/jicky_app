import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:jicky_app/screens/bottomNavigationBar.dart';
import 'package:jicky_app/screens/forgotPassword.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF7FF),
      body: Center(
          child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(
              flex: 40,
            ),
            Container(
                height: 250,
                width: 250,
                child: const Image(image: AssetImage('images/log in.png'))),
            const Spacer(
              flex: 7,
            ),
            Container(
              width: 300,
              height: 40,
              child: TextFormField(
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter E-mail';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 186, 87, 29),
                      ),
                    ),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(110, 1, 82, 164), fontSize: 13),
                    hintText: 'Username',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              width: 300,
              height: 40,
              child: TextFormField(
                controller: password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 29, 105, 186),
                        width: 1,
                      ),
                    ),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(110, 1, 82, 164), fontSize: 13),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email.text, password: password.text);
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "bottomNavigationBar", (route) => false);
                  ;
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                  }
                }
              },
              child: Text(
                'Log in',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(110, 30),
                  backgroundColor: Color(0xFF379AE6)),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()));
              },
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFF379AE6),
                  color: Color(0xFF379AE6),
                  fontSize: 12,
                ),
              ),
            ),
            const Spacer(
              flex: 50,
            ),
          ],
        ),
      )),
    );
  }
}
