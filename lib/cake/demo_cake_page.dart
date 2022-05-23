// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DemoCake extends StatelessWidget {
  const DemoCake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromARGB(186, 119, 102, 214),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text("Fruit Cake"),
              const Text("Strawberry & Kiwi special"),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    _buildChoicClip("1 kg", true),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoicClip("2 kg", false),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoicClip("3 kg", false),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoicClip("4 kg", false),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoicClip("5 kg", false),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoicClip("6 kg", false),
                    const SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 20),
                  const Image(
                    image: AssetImage('assets/profile/fooditem/cake1.png'),
                    width: 200,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add)),
                        const CircleAvatar(
                          child: Text("1"),
                          radius: 12,
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.remove)),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(right: 12),
                alignment: Alignment.centerRight,
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$ 34. ",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                          text: '88',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin:const  EdgeInsets.all(12),
                height: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 50, 57, 155),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                              image:
                                  AssetImage('assets/profile/fooditem/egg.png'),
                              width: 40,
                              height: 40),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "4 eggs",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(color: Colors.grey),
                    Expanded(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                              image: AssetImage(
                                  'assets/profile/fooditem/chocoPower.png'),
                              width: 40,
                              height: 40),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "2 tsp Powder",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(color: Colors.grey),
                    Expanded(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                              image: AssetImage(
                                  'assets/profile/fooditem/sugar1.png'),
                              width: 40,
                              height: 40),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "1 cup sugar",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:20)
,              Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 50, 57, 155),
                    borderRadius: BorderRadius.circular(20)),
                height: 90,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/profile/fooditem/map.png'),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const  [
                          SizedBox(
                            height: 8,
                          ),
                          Text(" Misiags 89",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Mid Baneshwor , kathmandu"),
                          Text("Nepal")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             const  SizedBox(height:30),
              Padding(
                padding: const EdgeInsets.only(left: 28.0,right: 22),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 50, 57, 155),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(children: const [
                    SizedBox(width: 10,),
                    Text("Rating",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1.6)),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.star_half),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "(55)",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              RaisedButton(
                padding:const  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                onPressed: () {},
                child: const Text(
                  "Make order now",
                ),
                textColor: Colors.white,
                color: Colors.orange,
                hoverColor: Colors.red,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ChoiceChip _buildChoicClip(String text, bool select) {
    return ChoiceChip(
      label: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      selected: select,
      selectedColor:const  Color.fromARGB(209, 22, 12, 12),
      disabledColor: const Color.fromARGB(255, 110, 156, 241),
    );
  }
}
