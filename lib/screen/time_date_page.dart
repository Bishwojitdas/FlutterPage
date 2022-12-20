import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:link_up_pages/screen/car_page.dart';
import 'package:link_up_pages/screen/menuItem.dart';
import 'package:link_up_pages/screen/login_account.dart';
import 'package:link_up_pages/screen/profile_page.dart';
import 'package:link_up_pages/screen/stack_demo.dart';

class Time_Date_Page extends StatefulWidget {
   Time_Date_Page({Key? key}) : super(key: key);



  @override
  State<Time_Date_Page> createState() => _Time_Date_PageState();

}

class _Time_Date_PageState extends State<Time_Date_Page> {

  int isChange = 0;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.9),

        bottomNavigationBar:   SingleChildScrollView(scrollDirection:Axis.vertical,
          child: GNav(tabs:[  GButton(icon: Icons.home, iconColor: Colors.indigo, text: " Home",
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Time_Date_Page(),));
            },
          ),
             GButton(icon: Icons.save_rounded, iconColor: Colors.pinkAccent, text: " Save",
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Account(),));
             }
               ,),
             GButton(icon: Icons.login, iconColor: Colors.purple, text: "  Login ",
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Empty_Page(),));
            },),
            GButton(icon: Icons.arrow_forward, iconColor: Colors.teal, text: " Next Page",
              hoverColor: Colors.red,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Car_Page(),));
            },
            ),

          ]
          ),
        ),
        body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                          //first row
                                  //Icon
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration( border: Border.all(color: Colors.indigo, width: 2
                                    ), borderRadius: const BorderRadius.all(Radius.circular(10)),),
                                    child: IconButton(onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Stack_Demo(),));
                                    }, icon: const Icon(Icons.arrow_back, size: 20, color: Colors.indigo,)),
                                  ),

                                  //Picture
                                  Container(
                                    height: 50,
                                    width:50,
                                    decoration: BoxDecoration( border: Border.all(color: Colors.indigo, width: 2
                                    ), borderRadius: const BorderRadius.all(Radius.circular(100)),),
                                    child: const ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      child: Image(image: AssetImage("assets/images/bish_cls_party_1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),),
                                      ]
                          ),
                        ),

                          const SizedBox(height: 20,),

                        // Date:
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Stack_Demo(),));
                              }, child: Row(
                                children: const [
                                  Icon(Icons.arrow_back, size: 30, color: Colors.indigo,),
                                  Text(" Mar",style: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.w300),),

                                ],
                              )
                              ),

                              const Text("April",style: TextStyle(fontSize: 30, color: Colors.indigo, fontWeight: FontWeight.w600),
                              ),

                                TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Stack_Demo(),));
                                }, child: Row(
                                children: const [
                                Text("May ",style: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                Icon(Icons.arrow_forward, size: 30, color: Colors.indigo,)
                                ],
                                )
                                ),
                            ],
                    ),
                        ),
                ]  ),

                  ),

                 // Day:
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: SizedBox(
                     height: 150,
                     width: double.infinity,
                     child: SingleChildScrollView(scrollDirection:Axis.horizontal ,
                       child: Row(
                          children: [

                            //12 Wednesday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                     isChange = 0;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 0 ? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("12",style: TextStyle(fontSize: 30, color: isChange == 0 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Wed",style: TextStyle(fontSize: 15, color:  isChange == 0 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),


                            //13 Thursday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                     isChange = 1;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 1? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("13",style: TextStyle(fontSize: 30, color: isChange == 1 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Thu",style: TextStyle(fontSize: 15, color:  isChange == 1 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //14 Friday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                     isChange = 2;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 2? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("14",style: TextStyle(fontSize: 30, color: isChange == 2 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Fri",style: TextStyle(fontSize: 15, color:  isChange == 2 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //15 Saturday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isChange = 3;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 3? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("15",style: TextStyle(fontSize: 30, color: isChange == 3 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Sat",style: TextStyle(fontSize: 15, color:  isChange == 3 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //16 Sunday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isChange = 4;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 4? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("16",style: TextStyle(fontSize: 30, color: isChange == 4 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Sun",style: TextStyle(fontSize: 15, color:  isChange == 4 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //17 Monday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isChange = 5;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 5? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("17",style: TextStyle(fontSize: 30, color: isChange == 5 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Mon",style: TextStyle(fontSize: 15, color:  isChange == 5 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //18 Tuesday
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isChange = 6;
                                  });
                                },
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 4, offset: Offset(3, 4)
                                      )
                                    ], color: isChange == 6? Colors.indigo: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("18",style: TextStyle(fontSize: 30, color: isChange == 6 ? Colors.white: Colors.indigo, fontWeight: FontWeight.w600),),
                                      Text("Tue",style: TextStyle(fontSize: 15, color:  isChange == 6 ? Colors.white : Colors.indigo, fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                       ),
                     ),
                   ),
                 ) ,


                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text("Ongoing", style: TextStyle(fontSize: 30, color: Colors.indigo, fontWeight: FontWeight.w700),),
                  ),

          const SizedBox(height: 20,),

                  SingleChildScrollView(scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [


                          //Mobile App Design
                          SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                         height: 130,
                                    width: MediaQuery.of(context).size.width/5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("9 AM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                        Text("10 AM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                      ],
                                    ),
                                   ),

                                  Container(
                                    height: 130,
                                    width:MediaQuery.of(context).size.width/1.4 ,
                                    decoration: const BoxDecoration(color: Colors.indigo,
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
                                                  fontSize: 13, fontWeight: FontWeight.w300),),
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 45,
                                                width: MediaQuery.of(context).size.width/3,
                                                child: Stack(
                                                  children: [
                                                    InkWell(
                                                      onTap:(){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                        setState(){
                                                        }},
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
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
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child: InkWell(
                                                        onTap:(){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                          setState(){
                                                          }},
                                                        child: Container(
                                                          height: 40,
                                                          width: 40,
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
                                               const Text("9.00 AM - 10.00 AM", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300,
                                                  color: Colors.white),)
                                            ],
                                          ),


                                        ],
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Break
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               const SizedBox(
                                 height: 20,
                                 width: 60,
                                 child:Text("10 AM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),
                                 ),

                               ),


                                SizedBox(
                                  height: 20,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          border: Border.all(color: Colors.white, width: 5,),
                                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                        width: 5,
                                      ),

                                      Container(
                                        height: 1,
                                        width: MediaQuery.of(context).size.width/1.4,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          border: Border.all(color: Colors.white, width: 5,),
                                          borderRadius: const BorderRadius.all(Radius.circular(100)),

                                        ),
                                      )
                                    ],
                                  ),

                                ),



                              ],
                            ),
                          ),

                          //Software Testing
                          SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 130,
                                    width: MediaQuery.of(context).size.width/5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("11 AM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                        Text("12 AM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 130,
                                    width:MediaQuery.of(context).size.width/1.4 ,
                                    decoration: const BoxDecoration(color: Colors.indigo,
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
                                              Text("Software Testing", style: TextStyle(color: Colors.white,
                                                  fontSize: 20, fontWeight: FontWeight.bold),),
                                              SizedBox(height: 5,),
                                              Text("Anita and Devid", style: TextStyle(color: Colors.white,
                                                  fontSize: 13, fontWeight: FontWeight.w300),),
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 45,
                                                width: MediaQuery.of(context).size.width/3,
                                                child: Stack(
                                                  children: [
                                                    InkWell(
                                                      onTap:(){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                        setState(){
                                                        }},
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: BoxDecoration(
                                                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                            border: Border.all(color: Colors.white, width: 2)
                                                        ),
                                                        child:  const ClipRRect(
                                                          borderRadius:BorderRadius.all(Radius.circular(100)),
                                                          child: Image(image: AssetImage("assets/images/bish_cls_party_1.jpg"),
                                                            fit: BoxFit.cover,),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child: InkWell(
                                                        onTap:(){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                          setState(){
                                                          }},
                                                        child: Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                            border: Border.all(color: Colors.white, width: 2),
                                                          ),
                                                          child:  const ClipRRect(
                                                              borderRadius:BorderRadius.all(Radius.circular(100)),
                                                              child: Image(image: AssetImage("assets/images/rony_1.jpg",),
                                                                fit: BoxFit.fill,
                                                              )
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Text("11.00 AM - 12.00 AM", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300,
                                                  color: Colors.white),)
                                            ],
                                          ),


                                        ],
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Web Development
                          SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 130,
                                    width: MediaQuery.of(context).size.width/5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("1 PM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                        Text("2 PM", style: TextStyle(fontSize: 13, color: Colors.indigo, fontWeight: FontWeight.w300),),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 130,
                                    width:MediaQuery.of(context).size.width/1.4 ,
                                    decoration: const BoxDecoration(color: Colors.indigo,
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
                                              Text("Web Development", style: TextStyle(color: Colors.white,
                                                  fontSize: 20, fontWeight: FontWeight.bold),),
                                              SizedBox(height: 5,),
                                              Text("Mike and Anita", style: TextStyle(color: Colors.white,
                                                  fontSize: 13, fontWeight: FontWeight.w300),),
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 45,
                                                width: MediaQuery.of(context).size.width/3,
                                                child: Stack(
                                                  children: [
                                                    InkWell(
                                                      onTap:(){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                        setState(){
                                                        }},
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: BoxDecoration(
                                                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                            border: Border.all(color: Colors.white, width: 2)
                                                        ),
                                                        child:  const ClipRRect(
                                                          borderRadius:BorderRadius.all(Radius.circular(100)),
                                                          child: Image(image: AssetImage("assets/images/bish_cls_party_1.jpg"),
                                                            fit: BoxFit.cover,),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child: InkWell(
                                                        onTap:(){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile_Page(),));
                                                          setState(){
                                                          }},
                                                        child: Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: BoxDecoration(
                                                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                                                            border: Border.all(color: Colors.white, width: 2),
                                                          ),
                                                          child:  const ClipRRect(
                                                              borderRadius:BorderRadius.all(Radius.circular(100)),
                                                              child: Image(image: AssetImage("assets/images/bishwojit_cls_2.jpg",),
                                                                fit: BoxFit.fill,
                                                              )
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Text("1.00 PM - 2.00 PM", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300,
                                                  color: Colors.white),)
                                            ],
                                          ),


                                        ],
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )


                ],
        ),
      ),
    );
  }
}
