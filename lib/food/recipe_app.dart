// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui/main.dart';

class RecipeScreen1 extends StatelessWidget {
  const RecipeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              child: Stack(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: 300,
              child: const Image(
                image: AssetImage('assets/food1/5.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => const MyApp()));
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 301.0),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
                height: 610,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 301.0),
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(80)),
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.orange],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width * 0.59,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const  [
                        Padding(
                          padding:  EdgeInsets.only(top: 18.0),
                          child: SizedBox(
                            width: 150,
                            child: Text(
                              "Chinese Food",
                              style: TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(
                            "In a small bowl combine, cinnaamon, nutmeg and sugar and set aside briefly",style:TextStyle(fontSize: 20))
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top:650.0,left:50,right:50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)
                ),
                height: 30,
                child: Row(
                  children:const  [
                    SizedBox(width: 10,),
                    Icon(FontAwesomeIcons.fire,color:Colors.white, size:15),
                    SizedBox(
                      width:12
                    ),
                    Text("65%", style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.4)),
                    VerticalDivider(color:Colors.white),
                    Text("Vegetarian", style:TextStyle(color:Colors.white, fontWeight: FontWeight.normal, letterSpacing: 1.4)),
                    VerticalDivider(color:Colors.white),
                    Icon(Icons.timer, color:Colors.white, size:20),
                    SizedBox(width:8),
                    Text(" 10 min", style:TextStyle(color:Colors.white, fontWeight: FontWeight.normal, letterSpacing: 1.4)),
        
        
        
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 266.0, left: 20),
              child: SizedBox(
                width: 40,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.play_circle,
                    color: Colors.red,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 284.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                      onPressed: () {},
                      child: const Text("Read  more"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ],
              ),
            ),
          ],
              ),
            ),
        ));
  }
}
