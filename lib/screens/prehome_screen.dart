// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/before_starting_screen.dart';

class PreHomeScreen extends StatelessWidget {
  const PreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 230, 201),
      appBar: appBar(),
      body: ListView(
        children: [
          // search field to find games
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 80, right: 8),
            child: Row(
              children: [
                Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color(0xff1D1617).withOpacity((0.11)),
                        blurRadius: 40,
                        spreadRadius: 0.0,
                      )
                    ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Looking for a game?",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    )),
                SizedBox(width: 8),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(80, 45),
                        textStyle: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w200),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Text("Add",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
              ],
            ),
          ),

          // user's games list
          SizedBox(height: 30),
          Column(
            children: [
              Text(
                "Your Games",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),

              // list view of games
              SizedBox(height: 30),
              SizedBox(
                  height: 300,
                  // color: Colors.amber[800],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/valorant.jpg',
                              height: 480,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/overwatch.jpeg',
                              height: 480,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

              // select your game
              SizedBox(height: 10),
              Container(
                child: Text(
                  "Select your game",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),

              // go button
              SizedBox(height: 10),
              Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          minimumSize: Size(80, 50),
                          textStyle: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w200),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const BeforeStartingScreen())));
                      },
                      child: Text("G O !",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)))),
            ],
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 173, 216, 175),
      title: const Text(
        "G A M E - S E L E C T I O N",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
