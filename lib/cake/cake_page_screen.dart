

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CakeHomeScreen extends StatelessWidget {
  const CakeHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                'Fruit Cake',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Strawberry & Kiwi special"),
              SizedBox(
                height: 60,
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 60,
                    ),
                    _buildChoiceChip(true, "1 kg"),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoiceChip(false, "2 kg"),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoiceChip(false, "3 kg"),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoiceChip(false, "4 kg"),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildChoiceChip(false, "5 kg"),
                    const SizedBox(
                      width: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 170,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset("assets/profile/fooditem/cake.png")),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, right: 10),
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                          CircleAvatar(
                              radius: 13,
                              child: const Text(
                                '1',
                              ),
                              backgroundColor: Colors.cyan.shade100),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                width: double.infinity,
                child: const Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "\$ 73. ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "99",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin:const  EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                height: 100,
                decoration:  BoxDecoration(
                  color:const  Color.fromARGB(31, 209, 53, 53),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  _buildColumnItem('assets/profile/fooditem/egg.png','4 eggs'),
                  const VerticalDivider(color: Colors.grey),
                  _buildColumnItem('assets/profile/fooditem/vanilla.png','2 tsp vanilla'),

                  const VerticalDivider(color: Colors.grey),
                  _buildColumnItem('assets/profile/fooditem/sugar.png','1 cup sugar'),

                 
                  
                ]),
              ),
              const SizedBox(height: 30,),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 123, 31),
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  child: Row(children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Image(
                      image: AssetImage('assets/profile/fooditem/map.png'),
                      width: 110,
                      height: 120,
                    ),
                    const SizedBox(width: 25),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Delivery',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('45, Amerlands'),
                          Text('Nr. Harmer Road, London'),
                        ])),
                  ])),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 30,
                    ),
                    Text("Ratings"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.star_half),
                    SizedBox(
                      width: 10,
                    ),
                    Text("(55)", style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                color:const Color.fromARGB(255, 61, 47, 3),
                hoverColor: const Color.fromARGB(255, 193, 204, 42),
                padding: const EdgeInsets.all(17),
                onPressed: () {},
                child:const  Text("Make Order Now",style:TextStyle(color:Colors.white,letterSpacing: 2)),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildColumnItem(String image, String textt) {
    return Expanded(
                  child: Column(
                    children:  [
                     const  SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: AssetImage(image),
                        width: 30,
                        height: 40,
                      ),
                      Text(textt),
                    ],
                  ),
                );
  }

  ChoiceChip _buildChoiceChip(bool select, String kg) {
    return ChoiceChip(
      label: Text(kg),
      selected: select,
      backgroundColor: Colors.white,
      onSelected: (val) {},
      selectedColor: Colors.cyan.shade100,
    );
  }
}
