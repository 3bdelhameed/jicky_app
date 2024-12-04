import 'package:flutter/material.dart';
import 'package:jicky_app/screens/workers.dart';

import 'package:slider_button/slider_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(
              flex: 4,
            ),
            Container(
              height: 100,
              width: 390,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: const Image(
                          image: AssetImage('images/Component 4.png'))),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                    'Hello!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 131, 195),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(
                    flex: 30,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Group 53.png"),
                    fit: BoxFit.cover),
              ),
              height: 318,
              width: 338,
              child: Center(
                  child: Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    width: 160,
                    child: const Column(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Workers',
                          style: TextStyle(
                              color: Color.fromARGB(250, 84, 130, 194),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '28',
                          style: TextStyle(
                              color: Color.fromARGB(250, 84, 130, 194),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 51,
                  ),
                  Container(
                    child: const Column(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'On Site',
                          style: TextStyle(
                              color: Color.fromARGB(250, 84, 130, 194),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '16',
                          style: TextStyle(
                              color: Color.fromARGB(250, 84, 130, 194),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ),
            Spacer(
              flex: 2,
            ),
            Center(
                child: SliderButton(
              action: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => workers()),
                );
                return true;
              },
              label: const Text(
                "Workers",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              icon: Icon(
                Icons.engineering,
                color: Color.fromARGB(250, 84, 130, 194),
                size: 33,
              ),
              baseColor: Color.fromARGB(250, 84, 130, 194),
              backgroundColor: Color.fromARGB(255, 232, 240, 250),
            )),
            Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
