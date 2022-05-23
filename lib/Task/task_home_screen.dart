import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class TaskHomeScreen1 extends StatelessWidget {
  TaskHomeScreen1({Key? key}) : super(key: key);

  final List task = [
    {
      "title": "Buy computer science book from Agarawal book store",
      "Completed": true
    },
    {"title": "Send updated logo and source files ", "Completed": false},
    {"title": "Recharge broadband bill", "Completed": false},
    {"title": "Pay telephone bill", "Completed": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.blue],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -130,
                        top: -75,
                        child: Container(
                          width: 390,
                          height: 195,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 238, 95, 59),
                                    Color.fromARGB(255, 226, 13, 66)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft)),
                          // Text inside circle
                        ),
                      ),
                    ],
                  ),
                ),
                //inside circle
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        child: Container(
                          width: 50,
                          height: 75,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 231, 105, 73),
                                    Color.fromARGB(255, 173, 48, 80)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft)),
                        ),
                      ),
                    ],
                  ),
                ),
                //inside circle 2
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 90,
                        top: 50,
                        child: Container(
                          width: 30,
                          height: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 231, 105, 73),
                                    Color.fromARGB(255, 173, 48, 80)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: SizedBox(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Himanshu",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(
                          height: 7,
                        ),
                        Text("You have 3 remaining tasks for today!",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 100,
                  child: Container(
                    width: 40,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue])),
                  ),
                ),
                Positioned(
                  left: 240,
                  top: 300,
                  child: Container(
                    width: 80,
                    height: 90,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue])),
                  ),
                ),
                Positioned(
                  top: 350,
                  child: Container(
                    width: 80,
                    height: 90,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue])),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 80, top: 138.0, right: 20),
                  child: SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Tomorrow",
                          style: TextStyle(
                              color: Color.fromARGB(255, 233, 157, 157),
                              fontSize: 50),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 250.0, left: 25, right: 25),
                  child: Column(
                    children: [
                      ...task.map((task) => ListTile(
                            title: ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                task["title"],
                                style: TextStyle(
                                    decoration: task["Completed"]
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                    decorationColor: Colors.red,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 800.0, right: 50, left: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                        const Spacer(),
                        FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.calendarCheck),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
