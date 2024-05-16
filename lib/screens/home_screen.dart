// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/player/favorites_screen.dart';
import 'package:flutter_project/screens/player/profile_screen.dart';
import 'package:flutter_project/screens/player/progress_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 230, 201),
        appBar: appBar(),
        body: ListView(
          children: [
            // profile button + picture
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ProfileScreen())));
                },
                child: Center(
                  child: Image.asset(
                    'assets/images/profile.png',
                    height: 120,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
              width: 0,
            ),

            // buttons below profile
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const ProfileScreen())));
                      },
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(width: 8),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const ProgressScreen())));
                      },
                      child: Text(
                        "Progress",
                        style: TextStyle(fontSize: 13),
                      )),
                  SizedBox(width: 8),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const FavoritesScreen())));
                      },
                      child: Text(
                        "Favorites",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 8),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Color.fromARGB(255, 93, 195, 199),
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ProfileScreen())));
                    },
                    child: Text(
                      "Create a rutine",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              ],
            ),

            // textfield to find rutines, other agents, verified coaches, etc
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color(0xff1D1617).withOpacity((0.11)),
                        blurRadius: 40,
                        spreadRadius: 0.0,
                      ),
                    ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "What are you looking for Agent? ...",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                    width: 12,
                  ),

                  // go button
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
                      child: Text("G O !",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold))),
                ],
              ),
            ),

            // Recently viewed routines
            SizedBox(height: 8),
            Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Recently viewed routines",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 27, 26),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ]),
            Column(
              children: [
                SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch2.jpeg',
                              height: 480,
                            ),
                          ),
                          SizedBox(width: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch.jpeg',
                              height: 480,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            // Recommended for you

            SizedBox(height: 8),
            Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 27, 26),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ]),
            Column(
              children: [
                SizedBox(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch2.jpeg',
                              height: 480,
                            ),
                          ),
                          SizedBox(width: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch.jpeg',
                              height: 480,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            // Hot rutines

            SizedBox(height: 8),
            Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Hot rutines",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 27, 26),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ]),
            Column(
              children: [
                SizedBox(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch2.jpeg',
                              height: 480,
                            ),
                          ),
                          SizedBox(width: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch.jpeg',
                              height: 480,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            // On the rise

            SizedBox(height: 8),
            Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "On the rise",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 27, 26),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ]),
            Column(
              children: [
                SizedBox(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch2.jpeg',
                              height: 480,
                            ),
                          ),
                          SizedBox(width: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/overwatch.jpeg',
                              height: 480,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),

            SizedBox(height: 60)
          ],
        ));
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 173, 216, 175),
      title: const Text(
        "H O M E - L O B B Y",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
