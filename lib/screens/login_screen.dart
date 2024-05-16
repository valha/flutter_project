// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_project/screens/forgot_password_screen.dart";
import "package:flutter_project/screens/prehome_screen.dart";
import "package:flutter_project/screens/register_screen.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 230, 201),
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 60),

          // logo
          Image.asset(
            'assets/images/logo.png',
            height: 250,
          ),
          SizedBox(height: 110),

          // greeting message
          Text(
            'Welcome back Agent!',
            textAlign: TextAlign.center,
            style: TextStyle(height: -12),
          ),
          SizedBox(height: 5),

          // mail field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity((0.11)),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                )
              ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "rvargas@gmail.com",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            ),
          ),

          // password field
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity((0.11)),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                )
              ]),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Type your password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            ),
          ),

          //forgot password
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const ForgotPasswordScreen())));
                    },
                    child: Text("Forgot your password?"))),
          ),

          //login button
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    fixedSize: Size(40, 50),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const PreHomeScreen())));
                },
                child: Text("L O G I N",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
          ),

          //new member
          SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const RegisterScreen())));
                },
                child: Text("Still not an agent? Become one!")),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 173, 216, 175),
      title: Text(
        "L O G I N",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
