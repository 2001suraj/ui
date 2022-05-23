// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui/main.dart';

class FoodPage1 extends StatelessWidget {
  // const FoodPage1({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/food1/1.jpeg',
    'assets/food1/2.jpeg',
    'assets/food1/3.jpeg',
    'assets/food1/4.jpeg',
    'assets/food1/5.jpeg',
    'assets/food1/7.jpeg',
    'assets/food1/8.jpeg',
    'assets/food1/9.jpeg',
    'assets/food1/10.jpeg',
    'assets/food1/11.jpeg',
  ];
  final List<String> tt = [
    'burger',
    'momo',
    'coke',
    'burger',
    'momo',
    'coke',
    'burger',
    'momo',
  ];

   FoodPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration:const  BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.purple,
                Colors.yellow,
                Colors.green
              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            ),
            width: double.infinity,
            height: 900,
            child: Stack(
              children: [
                Container(
                  width: 45,
                  height: 50,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.purple,
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(30))),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MyApp()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 31, 8, 6),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 60),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Customised",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "breakfast".toUpperCase(),
                          style:
                              const TextStyle(fontSize: 34, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 30),
                      child: RaisedButton(
                        onPressed: () {},
                        child: const Text("FILTER"),
                        color: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 88.0, left: 15, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My favorities".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.4),
                      ),
                      const SizedBox(height: 20),
                      _buildTextview(),
                      const SizedBox(height: 20),
                      _buildTextview(),
                       const SizedBox(height: 20),
                      _buildTextview(),
                     const  SizedBox(height: 50,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildTextview() {
    return SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return SizedBox(
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                margin:const EdgeInsets.only(right:15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        images[index % images.length]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: 150,
                              ),
                              const SizedBox(height: 20,),
                              Text(tt[index%tt.length],style:const TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20))
                            ],
                          ),
                        );
                      },
                    ),
                  );
  }
}
