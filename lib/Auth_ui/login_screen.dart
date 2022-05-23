// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui/Auth_ui/signup_page.dart';

class LoginScreen2 extends StatefulWidget {
 const LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
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
              top: 100,
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
              top: 200,
              right: 70,
              child: Container(
                width: 50,
                height: 60,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 54, 218, 33), Colors.blue],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 220,
              left: 33,
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
                  image: AssetImage('assets/dog/login.png'),
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
                    color:const  Color.fromARGB(255, 231, 118, 226),
                    padding:const  EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text("LOGIN"),
                  ),
                 const  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text("Don't have an account ? "),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => const SignUpPage1()));
                        },
                        child:const Text("Sign up",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        color: Colors.transparent,
                        elevation: 0,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
