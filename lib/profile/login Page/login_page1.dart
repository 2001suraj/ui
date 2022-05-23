// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Loginpage1 extends StatelessWidget {
  const Loginpage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft),
          ),
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],

        // elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: AssetImage('assets/profile/fooditem/dog.png'),
                width: 240,
              ),
              const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      
                      margin:const  EdgeInsets.only(right: 8),
                        padding:const EdgeInsets.only(bottom: 16, top:16),
                        decoration:const  BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(10),
                            topRight:  Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),child:const  Icon(Icons.person)),
                    hintText: "enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    filled: true,
                  ),
                ),
              ),
             const  SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding:const EdgeInsets.only(bottom: 16, top:16),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(10),
                            topRight:  Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                      
                        child: const Icon(Icons.lock),),
                      hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      filled: true),
                ),
              ),
             const  SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
                      child: const Text("Login"),
                    ),
                  ),
                ),
              ),
             const  SizedBox(
                height: 30,
              ),
              Row(
                children: [
                 const  SizedBox(
                    width: 30,
                  ),
                  RaisedButton(
                      onPressed: () {},
                      child: Text("Create Accont".toUpperCase())),
                  const SizedBox(
                    width: 30,
                  ),
                  RaisedButton(
                      onPressed: () {},
                      child: Text("forget password".toUpperCase()))
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
