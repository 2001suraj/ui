// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui/Auth_ui/auth_home.dart';
import 'package:ui/Task/task_home_screen.dart';
import 'package:ui/cake/cake_page_screen.dart';
import 'package:ui/cake/demo_cake_page.dart';
import 'package:ui/dating%20/dating_app1.dart';
import 'package:ui/food/food_page1.dart';
import 'package:ui/food/recipe_app.dart';
import 'package:ui/profile/demo_home_screen.dart';
import 'package:ui/profile/home_screen.dart';
import 'package:ui/profile/login%20Page/login_page1.dart';

import 'dog/dog_screen1.dart';
import 'fruit/fruit_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("UI"),
          centerTitle: true,
        ),
        
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey, Colors.black],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 190,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        _buildUI(context, "profile", const HomeScreen1(),"assets/profile/hotel/room4.jpg"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(
                          context,
                          "Demo  Profile",
                          const DemoProfileHomeScreen(),
                          "assets/profile/hotel/room3.jpg"
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Cake ", const CakeHomeScreen(),"assets/profile/fooditem/cake.png"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  height: 190,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        _buildUI(context, "demo cake", const DemoCake(),"assets/profile/fooditem/cake1.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Auth UI", const AuthHome(),"assets/dog/login.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Task Screen", TaskHomeScreen1(),"assets/dog/signup.png"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  height: 190,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        _buildUI(context, "Food layout", FoodPage1(),"assets/food1/1.jpeg"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Recipe UI", const RecipeScreen1(),"assets/food1/4.jpeg"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Dog Screen ", DogScreen1(),"assets/dog/1.jpeg"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  height: 190,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        _buildUI(context, "Dating App ui ", const DatingApp1(),"assets/profile/fooditem/dog.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Login Page 1", const Loginpage1(),"assets/dog/home.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Fruit App", const FruitApp1(),"assets/profile/fooditem/avo.png"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ]),
                ),
                 Container(
                  height: 190,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Row(
                      children: [
                        _buildUI(context, "Dating App ui ", const DatingApp1(),"assets/profile/fooditem/dog.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Demo1", const Loginpage1(),"assets/dog/home.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        _buildUI(context, "Demo2", const FruitApp1(),"assets/profile/fooditem/avo.png"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildUI(BuildContext context, String title, Widget key, String img) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 12, right: 15),
      child: RaisedButton(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                height: 125,
                width: 125,
              ),
              Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => key));
        },
      ),
    );
  }
}
