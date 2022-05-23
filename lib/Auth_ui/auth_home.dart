// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui/Auth_ui/login_screen.dart';
import 'package:ui/Auth_ui/signup_page.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: -96,
              right: -70,
              child: Container(
                width: 150,
                height: 160,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.amber, Colors.blue],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -70,
              child: Container(
                width: 150,
                height: 160,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.amber, Colors.blue],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: -100,
              left: -70,
              child: Container(
                width: 150,
                height: 160,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.amber, Colors.blue],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -70,
              child: Container(
                width: 150,
                height: 160,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.amber, Colors.blue],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 100,
              left: 70,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 74, 15, 236),
                      Color.fromARGB(255, 150, 47, 141)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
             Positioned(
              top: 700,
              left: 70,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 72, 36, 172),
                      Color.fromARGB(255, 80, 155, 216)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
             Positioned(
              top: 540,
              right: 190,
              child: Container(
                width: 30,
                height: 40,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 72, 36, 172),
                      Color.fromARGB(255, 80, 155, 216)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 200,
              right: 70,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 92, 90, 221), Color.fromARGB(255, 121, 216, 216)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
              Positioned(
              top: 400,
              right: 70,
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 110, 202, 198), Color.fromARGB(255, 231, 126, 226)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 300,
              left: 40,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 15, 209, 48), Colors.blue],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
         Positioned(
              top: 700,
              right: 70,
              child: Container(
                width: 150,
                height: 160,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 136, 190, 85), Color.fromARGB(255, 226, 117, 102)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),    
            const Padding(
              padding: EdgeInsets.only(top: 100.0, left: 150),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 160.0, left: 60),
              child: Expanded(
                child: Image(
                  image: AssetImage('assets/dog/home.png'),
                  width: 320,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 490.0, left: 90),
              child: RaisedButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const LoginScreen2()));
                  },
                  child: const Text("LOGIN"),
                  color: Colors.purpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 580.0, left: 90),
              child: RaisedButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 88),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => const SignUpPage1()));
                  },
                  child: const Text("SIGN UP"),
                  color: const Color.fromARGB(255, 206, 113, 223),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
