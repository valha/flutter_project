// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_project/screens/login_screen.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 230, 201),
        appBar: appBar(),
        body: Center(
          child: Column(
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 480,
                ),
              ),

              // subtitle below logo

              const Text('Become. the. Game.',
                  style: TextStyle(
                    height: -18,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                  )),

              const SizedBox(height: 96),

              // start button
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      fixedSize: Size(300, 60),
                      textStyle:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                      backgroundColor: const Color.fromARGB(255, 70, 148, 72),
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginScreen())));
                  },
                  child: Text("Press here to start",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ],
          ),
        ));
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 173, 216, 175),
      title: const Text(
        "S P L A S H",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
