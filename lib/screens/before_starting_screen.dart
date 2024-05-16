// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/screens/preferences_screen.dart';

class BeforeStartingScreen extends StatelessWidget {
  const BeforeStartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 230, 201),
        appBar: appBar(),
        body: Column(
          children: [
            // skip button
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: Size(80, 40),
                        textStyle: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w200),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())));
                    },
                    child: Text("skip",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              height: 300,
            ),

            // middle text
            Center(
              child: SizedBox(
                width: 300,
                height: 100,
                child: Text(
                  "Before starting, we would like to know what are you looking forward to improve...",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: Size(80, 40),
                        textStyle: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w200),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const PreferencesScreen())));
                    },
                    child: Text("Alright! take me there",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ));
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 173, 216, 175),
      title: const Text(
        "F I R S T - U S E",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
