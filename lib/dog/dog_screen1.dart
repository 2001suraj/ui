// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../main.dart';

class DogScreen1 extends StatelessWidget {
  DogScreen1({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/dog/1.jpeg',
    'assets/dog/2.jpeg',
    'assets/dog/3.jpeg',
    'assets/dog/4.jpeg',
    'assets/dog/5.jpeg',
    'assets/dog/6.jpeg',
    'assets/dog/7.jpeg',
    'assets/dog/8.jpeg',
    'assets/dog/9.jpeg',
    'assets/dog/10.jpeg',
  ];
  final List<String> tt = [
    'german ',
    'lab',
    'bull',
    'huski',
    'tibitan',
    'bhotey'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red, Colors.black, Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            height: 900,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 19, 4, 4), Color.fromARGB(255, 219, 23, 23)],
                        begin: Alignment.topRight,
                        end: Alignment.centerLeft),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back,color: Colors.white,),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => const MyApp()));
                    },
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 48.0, left: 80),
                  child:  Text(
                    "Dog",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 38.0, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        child: const Text("FILTER"),
                        color: Colors.transparent,
                        hoverColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              width: 2,
                              color: Colors.white,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120.0, right: 15, left: 20),
                  child: Column(
                    children: [
                      _buildIma(),
                      const SizedBox(height: 20,),
                    _buildIma(),
                      const SizedBox(height: 20,),
                    _buildIma(),
      
      
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildIma() {
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    images[index % images.length],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              margin: const EdgeInsets.only(right: 10),
                              height: 150,
                            ),
                           const  SizedBox(
                              height: 10,
                            ),
                            Text(
                              tt[index % tt.length],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      );
                    }),
              );
  }
}
