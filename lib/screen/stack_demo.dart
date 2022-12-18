import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:link_up_pages/screen/profile_page.dart';
import 'package:link_up_pages/screen/time_date_page.dart';

import 'empty_file.dart';

class Stack_Demo extends StatefulWidget {
  const Stack_Demo({Key? key}) : super(key: key);

  @override
  State<Stack_Demo> createState() => _Stack_DemoState();
}

class  _Stack_DemoState extends State<Stack_Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.85),
        appBar: AppBar( backgroundColor: Colors.purple,
          title: const Text("Camera", style: TextStyle(color: Colors.yellow),),
          leading:  const Icon(Icons.camera_alt_outlined, color: Colors.cyanAccent, size: 30),
          actions: [
           IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => Time_Date_Page(),));
           }, icon: const Icon(Icons.calendar_month, size: 30, color: Colors.white)),
          ],
        ),
        bottomNavigationBar:  SingleChildScrollView(scrollDirection:Axis.vertical,
          child: GNav(tabs:[ GButton(icon: Icons.home, iconColor: Colors.indigo, text: " Home",
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const Stack_Demo(),));
          },),
           GButton(icon: Icons.save_rounded, iconColor: Colors.green, text: " Save",
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Empty_Page(),));
          },),
            const GButton(icon: Icons.people, iconColor: Colors.purple, text: "  People",),
            const GButton(icon: Icons.notifications, iconColor: Colors.red, text: " Notificatons", hoverColor: Colors.red,)
          ]
       ),
        ),
        body: ListView(
          children: [
            Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration:const BoxDecoration(
                        color: Colors.indigo
                      ),

                  child:Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [

                        //Main design starting point
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          const SizedBox(height: 20,),
                          //Image and lines
                           SizedBox(
                             height: 60,
                              width: MediaQuery.of(context).size.width/1.2,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                      Stack(
                                                        children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 30, top: 10),
                                                          child: Container(
                                                            height: 20,
                                                            width: 5,
                                                            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),)
                                                                , color: Colors.greenAccent),
                                                          ),
                                                        ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 20, top :20),
                                                            child: Container(
                                                              height: 20,
                                                              width: 5,
                                                              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),)
                                                                  , color: Colors.cyanAccent),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 10, top :30),
                                                            child: Container(
                                                              height: 20,
                                                              width: 5,
                                                              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),)
                                                                  , color: Colors.yellow),
                                                            ),
                                                          )
                                                      ],),

                                              InkWell(
                                                onTap:(){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                  setState(){

                                                  }},
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                      border: Border.all(color: Colors.white, width: 2)
                                                  ),
                                                  child: const ClipRRect(
                                                    borderRadius:BorderRadius.all(Radius.circular(100)),
                                                    child: Image(image: AssetImage("assets/images/bish_cls_party_1.jpg"),
                                                      fit: BoxFit.cover,),
                                                  ),
                                                ),
                                              ),
                                            ],

                                          ),                      ),

                            const SizedBox(height: 60,),

                   // Hi Ghulam Text section:
                     Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Hi Bishwojit", style: TextStyle(color: Colors.white,fontSize: 30,
                                          fontWeight: FontWeight.bold ),),
                                      SizedBox(height: 5,),
                                      Text("6 Tasks are pending", style: TextStyle(color: Colors.cyanAccent,fontSize: 18,
                                          fontWeight: FontWeight.w300 ),),
                                    ],
                                  ),
                                ),
                  const SizedBox(height: 60,),

              Container(
                height: 150,
                width:MediaQuery.of(context).size.width/1.2 ,
                decoration: const BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Mobile App Design", style: TextStyle(color: Colors.white,
                                    fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("Mike and Anita", style: TextStyle(color: Colors.white,
                                    fontSize: 15, fontWeight: FontWeight.w200),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 65,
                                    width: MediaQuery.of(context).size.width/3,
                                    child: Stack(
                                      children: [
                                        InkWell(
                                          onTap:(){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                            setState(){
                                            }},
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                border: Border.all(color: Colors.white, width: 2)
                                            ),
                                            child:  const ClipRRect(
                                              borderRadius:BorderRadius.all(Radius.circular(100)),
                                              child: Image(image: AssetImage("assets/images/bishwojit_cls_2.jpg"),
                                                fit: BoxFit.cover,),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 40),
                                          child: InkWell(
                                            onTap:(){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                              setState(){
                                              }},
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                  border: Border.all(color: Colors.white, width: 2),
                                              ),
                                              child:  const ClipRRect(
                                                borderRadius:BorderRadius.all(Radius.circular(100)),
                                                child: Image(image: AssetImage("assets/images/bish_cls_party_1.jpg",),
                                                      fit: BoxFit.fill,
                                                     )
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Text("new", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200,
                                color: Colors.white),)
                              ],
                            ),
                            

                          ],
                  ),

                ),
              ),
                      const SizedBox(height: 30,),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width/1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                           const  Text("Monthly Review", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                                , color: Colors.yellow),),

                            Container(
                              alignment: Alignment.center,
                              height: 50,
                                width: 50,
                                decoration: const BoxDecoration(color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(100))),
                                child: IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Time_Date_Page(),));
                                }, icon: const Icon(Icons.calendar_month, size: 30, color: Colors.indigo)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width/1.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 140,
                                  width: 150,
                                  decoration: const BoxDecoration(color: Colors.pink,
                                      borderRadius: BorderRadius.all(Radius.circular(20))),
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Text("22", style: TextStyle(color: Colors.white, fontSize: 45,
                                      fontWeight: FontWeight.bold),),
                                      Text("Done", style: TextStyle(color: Colors.yellow, fontSize: 20,
                                          fontWeight: FontWeight.w300),)
                                    ],
                                  )
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                    alignment: Alignment.center,
                                    height: 120,
                                    width: 150,
                                    decoration: const BoxDecoration(color: Colors.teal,
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Text("10", style: TextStyle(color: Colors.yellow, fontSize: 45,
                                            fontWeight: FontWeight.bold),),
                                        Text("Ongoing", style: TextStyle(color: Colors.white, fontSize: 20,
                                            fontWeight: FontWeight.w300),)
                                      ],
                                    )
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    height: 120,
                                    width: 170,
                                    decoration: const BoxDecoration(color: Colors.green,
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Text("7", style: TextStyle(color: Colors.white, fontSize: 45,
                                            fontWeight: FontWeight.bold),),
                                        Text("In progress", style: TextStyle(color: Colors.white, fontSize: 20,
                                            fontWeight: FontWeight.w300),)
                                      ],
                                    )
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                    alignment: Alignment.center,
                                    height: 140,
                                    width: 170,
                                    decoration: const BoxDecoration(color: Colors.blueGrey,
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Text("12", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 45,
                                            fontWeight: FontWeight.bold),),
                                        Text("Waiting for review", style: TextStyle(color: Colors.cyanAccent, fontSize: 20,
                                            fontWeight: FontWeight.w300),)
                                      ],
                                    )
                                )
                              ],
                            ),


                          ],
                        ),
                      )


                                      ],
                        ),
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



