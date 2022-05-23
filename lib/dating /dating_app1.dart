import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class DatingApp1 extends StatelessWidget {
  const DatingApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        actions: [
          IconButton(icon: const  Icon(Icons.notifications), onPressed: () {}),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children:[ Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pink, Colors.blue, Colors.yellow],begin: Alignment.centerLeft,end:Alignment.topRight)
          ),
      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration:const  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
                child: Column(
                  children: const [
                    Text("Date mate", style:TextStyle(color:Colors.white, fontSize: 40)),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                        child: Image(
                      image: AssetImage('assets/profile/fooditem/dog.png'),
                    )),
                     SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            const   Text("Sasha -22",style: TextStyle(color:Colors.white, fontSize: 25),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on),
                  Text("San Diage, california ,USA"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.instagram),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon:const  Icon(FontAwesomeIcons.facebook),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.twitter),
                    onPressed: () {},
                  ),
                ],
              ),
                
                 Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                  Container(
                    margin:const  EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:30.0),
                          child: IconButton(
                            onPressed: () {},
                            icon:const  Icon(FontAwesomeIcons.user),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:22.0),
                          child: IconButton(
                            onPressed: () {},
                            icon:const  Icon(Icons.location_on),
                          ),
                        ),
                       const  Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right:18.0),
                          child: IconButton(
                            onPressed: () {},
                            icon:const  Icon(Icons.add),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:28.0),
                          child: IconButton(
                            onPressed: () {},
                            icon:const  Icon(Icons.message),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child:const  Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                  )
                ]),
              
            ],
          ),
        ),
        ],
      ),
    );
  }
}
