import 'package:flutter/material.dart';

class Car_Page extends StatefulWidget {
  const Car_Page({Key? key}) : super(key: key);

  @override
  State<Car_Page> createState() => _Car_PageState();
}

class _Car_PageState extends State<Car_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
              children:[
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        //Image:
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(100),
                                    ), border: Border.all(color: Colors.black, width: 1),
                                    boxShadow: const [
                                      BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 3),
                                    ]
                                ),
                                child: const ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(100),
                                  )
                                  ,
                                  child: Image(image: AssetImage("assets/images/bish_cls_party_1.jpg"),
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),

                          //Text and button
                          child: Row(
                            children:  [
                              Row(
                                children:  [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: RichText(
                                        text: const TextSpan(
                                            text:"Car" , style:TextStyle(fontSize: 14, color:Colors.black
                                        ),
                                            children:<TextSpan> [
                                              TextSpan(
                                                text:" 17.7jt ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
                                                  color: Colors.black
                                              ),
                                              )
                                            ]
                                        )
                                    ),
                                  )
                                ],
                              ),
                              //Button:
                              Row(
                                children:  [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration:
                                    BoxDecoration(
                                      borderRadius: BorderRadius.circular(10), color: Colors.blue,
                                    )
                                    ,
                                    child:  IconButton( onPressed: (){}, icon:const Icon(Icons.add, color: Colors.white, size: 15, ),
                                      style: const ButtonStyle( alignment: Alignment.center),
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    )
                ),
                const SizedBox(height: 5,),

                //Car image:
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width/1.3,
                  color: Colors.grey.withOpacity(0.02),
                  child:
                  const Image(image: AssetImage("assets/images/car2_white.png"),
                    fit: BoxFit.fill,),
                ),

                const Text(".....", style: TextStyle(fontSize: 30,color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.dotted), textAlign: TextAlign.center,),

                //3rd part GTR:
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  const [
                              Text("GTR", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),),
                              Text("Nissan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300,
                                color: Colors.red,
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Text("My Garage ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),),
                              Icon(Icons.arrow_forward, color: Colors.blue,size: 16,),
                            ],
                          ),
                        )
                      ],
                    )
                ),
                const SizedBox(height: 5,),

                //Availabe cars:
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    alignment: Alignment.center,
                    color: Colors.grey.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width/1.06,
                            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),), color: Colors.blue),
                            child:  Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  const [
                                        Text("Available Cars", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),),
                                        Text("Long term and short term", style: TextStyle(fontSize: 13, fontWeight:
                                        FontWeight.w300, color: Colors.white,
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children:  [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration:
                                        BoxDecoration(
                                          borderRadius: BorderRadius.circular(10), color: Colors.white,
                                        )
                                        ,
                                        child:  IconButton( onPressed: (){}, icon:const Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 15, ),
                                          style: const ButtonStyle( alignment: Alignment.center),
                                        ),
                                      )
                                    ],
                                  )

                                ],

                              ),
                            )
                            ,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                Row(
                                  children: const [
                                    Text("TOP DEALS", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black,
                                    ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children:  [
                                    const Text("More", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,
                                      color: Colors.blue,
                                    ),),
                                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined, size: 13
                                      , color: Colors.blue,))
                                  ],
                                )
                              ],

                            ),
                          )
                        ],
                      ),
                    )
                ),
                const SizedBox(height: 5,),

                //Cars second
                SizedBox(
                  height: 180,
                  width: MediaQuery.of(context).size.width,

                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width/2.5,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 2), color: Colors.white,),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 23,
                                        width: 60,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
                                        child: const Text("Weekly", style: TextStyle(fontSize: 13, color: Colors.white),
                                          textAlign:TextAlign.center ,),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width/3,
                                    child: const Image(image: AssetImage("assets/images/car_red.png"),
                                      fit: BoxFit.fill,),
                                  ),
                                  const Text("Discovery", style: TextStyle(fontSize: 23, color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                    textAlign:TextAlign.center ,),

                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width/2.5,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 2), color: Colors.white,),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 23,
                                        width: 60,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
                                        child: const Text("Weekly", style: TextStyle(fontSize: 13, color: Colors.white),
                                          textAlign:TextAlign.center ,),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width/3,
                                    child: const Image(image: AssetImage("assets/images/car2_white.png"),
                                      fit: BoxFit.fill,),
                                  ),
                                  const Text("Discovery", style: TextStyle(fontSize: 23, color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                    textAlign:TextAlign.center ,),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                //Bottom button :
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width/4,
                        decoration:  BoxDecoration(color: Colors.cyan.withOpacity(0.3),
                            borderRadius: const BorderRadius.all(Radius.circular(30))),
                        child: Row(
                          children: [
                            Row(

                              children:  [
                                IconButton( onPressed: (){}, icon:const Icon(Icons.home, color: Colors.blue, size:15),
                                )
                              ],
                            ),
                            Row(
                              children:  const [
                                Text("Home", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ), ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton( onPressed: (){}, icon:const Icon(Icons.search, color: Colors.green, size:20),
                        style: const ButtonStyle(alignment: Alignment.center ),
                      ),
                      IconButton( onPressed: (){}, icon:const Icon(Icons.notifications, color: Colors.orange, size:20),
                        style: const ButtonStyle(alignment: Alignment.center ),
                      ),
                      IconButton( onPressed: (){}, icon:const Icon(Icons.person, color: Colors.purple, size:20),
                        style: const ButtonStyle(alignment: Alignment.center ),
                      )
                    ],


                  ),
                )

              ]

          ),
        ],
      ),
    );

  }
}
