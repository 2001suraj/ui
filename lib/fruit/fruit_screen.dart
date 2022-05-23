// ignore_for_file: deprecated_member_use

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class FruitApp1 extends StatelessWidget {
  const FruitApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 177, 100, 208),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: Container(
                alignment: Alignment.center,
                child: const Image(
                  image: AssetImage("assets/profile/fooditem/avo.png"),
                  width: 300,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 248, 185, 185),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: 600,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container (
                                margin: const EdgeInsets.only(right: 18.0,),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            
                          const Text("Avocado",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 34)),
                         const  SizedBox(height: 26,),
                         const Text("\$1.29 / kg",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                         const  SizedBox(height: 8,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const  Text("100 gms for 1-2 pices",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.fire,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("150",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16,),

                          Slider(
                            value: 2,
                            onChanged: (val) {},
                            min: 1,
                            max: 10,
                          ),
                          const SizedBox(height: 16,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                               Text('1.5 kg (12-14 pieces approx)',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                         Padding(
                            padding:  EdgeInsets.only(right:10.0),
                            child: Text('\$2.70',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          ),

                            ],
                          ),
                         const  SizedBox(height: 26,),

                          Padding(
                            padding: const EdgeInsets.only(right:55.0,left:45.0),
                            child: SizedBox(
                              
                              width: double.infinity,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                
                                color:Color.fromARGB(255, 202, 185, 26),
                                onPressed: () {},
                                child: const Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.keyboard_arrow_up)),
                          const Text("Know More",style: 
                          TextStyle(color:Colors.yellow,fontWeight:FontWeight.bold, fontSize: 25,))

                              ],
                            ),

                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
