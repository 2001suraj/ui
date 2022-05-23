// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui/Auth_ui/login_screen.dart';

class SignUpPage1 extends StatelessWidget {
  const SignUpPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
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
              top: 200,
              left: 70,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 19, 175, 13),
                      Color.fromARGB(255, 136, 38, 79)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 430,
              right: 50,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 184, 39, 29), Color.fromARGB(255, 95, 117, 92)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 670,
              left: 33,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 49, 52, 78), Color.fromARGB(255, 240, 205, 7)],
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
                  image: AssetImage('assets/dog/signup.png'),
                  width: 320,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500.0, right: 15, left: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: " enter your e-mail",
                      fillColor:const  Color.fromARGB(69, 235, 154, 148),
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.lock),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: " enter your password",
                      fillColor: const Color.fromARGB(69, 235, 154, 148),
                      filled: true,
                    ),
                  ),
                 const  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 231, 118, 226),
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text("SIGNUP"),
                  ),
                 const  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account ? "),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (c) => const LoginScreen2()));
                        },
                        child: const Text("LOGIN",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        color: Colors.transparent,
                        elevation: 0,
                      )
                    ],
                  ),
                 const  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children:const  [
                         Expanded(
                          child: Divider(
                            color: Colors.black,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text("OR"),
                        SizedBox(width: 5),
                        Expanded(
                            child: Divider(color: Colors.black, height: 1.5))
                      ],
                    ),
                  ),
                 const  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:const  Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.indigo,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:const  Icon(FontAwesomeIcons.twitter,
                            color: Colors.lightBlue),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          color: Color.fromARGB(255, 230, 125, 125),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
