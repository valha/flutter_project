// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_screen.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 230, 201),
        appBar: appBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 29, 165, 228),
                ),
                height: 400,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'This screen has information related to the progress towards completing goals that the user has set in terms of number of rutines, or the periodicity of them and or a personal goal of improving in certain aspects of the game of choice.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: Size(80, 40),
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w200),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())));
                    },
                    child: Text("Back",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ),
            ],
          ),
        ));
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 173, 216, 175),
      title: const Text(
        "P R O G R E S S",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
