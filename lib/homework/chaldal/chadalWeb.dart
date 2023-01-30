import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/chaldal/chadalDrawer.dart';

import 'package:link_up_pages/screen/image_date_time.dart';
import 'package:link_up_pages/model/youtubeModel.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';
import 'package:link_up_pages/youtube/youtubeDrawer.dart';

class ChadalWebDesign extends StatefulWidget {
  const ChadalWebDesign({Key? key}) : super(key: key);

  @override
  State<ChadalWebDesign> createState() => _ChadalWebDesignState();
}

var _scaffoldKey=GlobalKey<ScaffoldState>();

class _ChadalWebDesignState extends State<ChadalWebDesign> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber.withOpacity(0.25),
              leadingWidth: 40,
              leading:  Padding(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/icon/drawer_color.png",
                        fit: BoxFit.cover,),

                    ),

                  ),
                ),
              ),
              actions: [
                Container(
                  height: FullHeight(context),
                  width: FullWidth(context),
                  color: Colors.amber.withOpacity(0.4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                       height: FullHeight(context),
                      width: 200,
                       child:Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10),
                             child: InkWell(
                               onTap: () {
                                 _scaffoldKey.currentState?.openDrawer();
                               },
                               child: Container(
                                 height: 30,
                                 width: 30,
                                 child: ClipRRect(
                                   child: Image.asset(
                                     "assets/icon/drawer_color.png",
                                     fit: BoxFit.cover,),

                                 ),

                               ),
                             ),
                           ),
                           InkWell(
                               onTap: () {

                               },
                               child:Container(
                                 height: 60,
                                 width: 130,
                                 child:const Image(image: AssetImage("assets/images/chadal_logo.jpg")) ,
                               )
                           ),
                         ],
                       ),
                     ),
                      Expanded(

                        child:   Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            height: 40,
                            child: TextField(
                              decoration:  InputDecoration(
                                hintText: "search for products eggs, potato etc.",
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 1),
                                  ),
                                  suffixIcon:IconButton(onPressed: () {

                                  }, icon:const Icon(Icons.search)),
                                  focusColor: Colors.green,
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white, width: 1),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        height: FullHeight(context),
                        width: FullHeight(context)/1.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {

                                },
                                child:Container(
                                  height: FullHeight(context),
                                  width: 100,
                                  decoration:const BoxDecoration(
                                      border: Border(left: BorderSide(color: Colors.black, width: 1))
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                     const Icon(Icons.home,  color: Colors.black,),
                                      Text("Dhaka", style: ChivoMonoMedium.copyWith(fontSize: 18, color: Colors.black),)
                                    ],
                                  ) ,
                                )
                            ),
                            InkWell(
                                onTap: () {

                                },
                                child:Container(
                                  height: FullHeight(context),
                                  width: 80,
                                  decoration: const BoxDecoration(
                                      border: Border(left: BorderSide(color: Colors.black, width: 1))
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                     const Icon(Icons.question_mark_rounded, color: Colors.black,),
                                      Text("Help", style: ChivoMonoMedium.copyWith(fontSize: 18, color: Colors.black),)
                                    ],
                                  ) ,
                                )
                            ),
                            InkWell(
                                onTap: () {

                                },
                                child:Container(
                                  height: FullHeight(context),
                                  width: 80,
                                  decoration: const BoxDecoration(
                                      border: Border(left: BorderSide(color: Colors.black, width: 1))
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("En", style: ChivoMonoMedium.copyWith(fontSize: 18, color: Colors.black),),
                                      Container(
                                        height: 30,
                                        width: 1,
                                       color: Colors.black,
                                      ),
                                      Text("Ban", style: ChivoMonoMedium.copyWith(fontSize: 18, color: Colors.black),)
                                    ],
                                  ) ,
                                )
                            ),

                            InkWell(
                                onTap: () {

                                },
                                child:Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: FullHeight(context),
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      color: Colors.pinkAccent,
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Sign In",
                                        style: ChivoMonoMedium.copyWith(fontSize: 18, color: Colors.white),
                                      textAlign: TextAlign.center,),
                                    )
                                  ),
                                )
                            ),
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ],


            ),

            key: _scaffoldKey,
            drawer: ChaldalDrawer(),
            body: ListView(
              children: [
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: FullHeight(context),
                      width: FullWidth(context)/9,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 310,
                              width: FullWidth(context),
                              decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.black, width: 1))
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: FullWidth(context),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Offers", style: LatoBold.copyWith(fontSize: 20),),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 25),
                                                child: Text("62", style: LatoBold.copyWith(fontSize: 20),),
                                              ),
                                              Expanded(child: Container(

                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: FullWidth(context),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Favourites", style: LatoBold.copyWith(fontSize: 20),),
                                              Expanded(child: Container(

                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: FullWidth(context),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Egg club", style: LatoBold.copyWith(fontSize: 15),),
                                              Container(
                                                  width: 40,
                                                  color: Colors.black,
                                                  child: Text("62", style: LatoBold.copyWith(fontSize: 20, color: Colors.white),)),
                                              Expanded(child: Container(

                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: FullWidth(context),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Text("Daily Deals", style: LatoBold.copyWith(fontSize: 15),),
                                              Container(
                                                  width: 40,
                                                  color: Colors.white,
                                                  child: Icon(Icons.local_offer)),
                                              Expanded(child: Container(

                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: FullWidth(context),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Food Aid", style: LatoBold.copyWith(fontSize: 20),),
                                              Expanded(child: Container(

                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: FullWidth(context),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text("Recepies", style: LatoBold.copyWith(fontSize: 20),),
                                              Expanded(child: Container(

                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height: 500,
                              width: FullWidth(context),
                              decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.black, width: 2))
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Food", style: LatoBold.copyWith(fontSize: 15),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 15),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Food", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,),
                                            child: Text("Food", style: LatoBold.copyWith(fontSize: 20),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child:  Text("Winter Collection", style: LatoBold.copyWith(fontSize: 15),),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),

                                          ),
                                          child:  Text("Flash Sales", style: LatoBold.copyWith(fontSize: 15),),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 40,
                                          width: FullWidth(context),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.5),
                                          ),
                                          child: Text("Food", style: LatoBold.copyWith(fontSize: 15),),
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
                    ),
                    Container(
                      height: FullHeight(context),
                      width: FullWidth(context)/1.15,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                               Padding(
                                                 padding: const EdgeInsets.all(8.0),
                                                 child: Container(
                                                   height: 70,
                                                   width: FullWidth(context),
                                                   child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                 ),
                                               ),
                                              const  Text("Potato Regular"),
                                               const  Text("1kg"),
                                               const  Text("29 tk"),

                                             ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.black, width: 1
                                                )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/onion.png")),
                                                  ),
                                                ),
                                                const  Text("Onion Indian"),
                                                const  Text("1kg"),
                                                const  Text("49 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/bitter-gourd.png")),
                                                  ),
                                                ),
                                                const  Text("Biiter gourd"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/chili.png")),
                                                  ),
                                                ),
                                                const  Text("Chili"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/cucumber.png")),
                                                  ),
                                                ),
                                                const  Text("Cucumber"),
                                                const  Text("1kg"),
                                                const  Text("80 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/garlic.png")),
                                                  ),
                                                ),
                                                const  Text("Garlic"),
                                                const  Text("1kg"),
                                                const  Text("100 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/tomato.png")),
                                                  ),
                                                ),
                                                const  Text("Tomato Regular"),
                                                const  Text("1kg"),
                                                const  Text("35 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),


                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/bitter-gourd.png")),
                                                  ),
                                                ),
                                                const  Text("Biiter gourd"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/chili.png")),
                                                  ),
                                                ),
                                                const  Text("Chili"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/cucumber.png")),
                                                  ),
                                                ),
                                                const  Text("Cucumber"),
                                                const  Text("1kg"),
                                                const  Text("80 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/garlic.png")),
                                                  ),
                                                ),
                                                const  Text("Garlic"),
                                                const  Text("1kg"),
                                                const  Text("100 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/tomato.png")),
                                                  ),
                                                ),
                                                const  Text("Tomato Regular"),
                                                const  Text("1kg"),
                                                const  Text("35 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/garlic.png")),
                                                  ),
                                                ),
                                                const  Text("Garlic"),
                                                const  Text("1kg"),
                                                const  Text("100 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/cucumber.png")),
                                                  ),
                                                ),
                                                const  Text("Cucumber"),
                                                const  Text("1kg"),
                                                const  Text("80 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/onion.png")),
                                                  ),
                                                ),
                                                const  Text("Onion Indian"),
                                                const  Text("1kg"),
                                                const  Text("49 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/bitter-gourd.png")),
                                                  ),
                                                ),
                                                const  Text("Biiter gourd"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/bitter-gourd.png")),
                                                  ),
                                                ),
                                                const  Text("Biiter gourd"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/chili.png")),
                                                  ),
                                                ),
                                                const  Text("Chili"),
                                                const  Text("1kg"),
                                                const  Text("40 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/cucumber.png")),
                                                  ),
                                                ),
                                                const  Text("Cucumber"),
                                                const  Text("1kg"),
                                                const  Text("80 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/garlic.png")),
                                                  ),
                                                ),
                                                const  Text("Garlic"),
                                                const  Text("1kg"),
                                                const  Text("100 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 180,
                                      width: 120,

                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:145,
                                            width: FullWidth(context),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: FullWidth(context),
                                                    child:  const Image(image: AssetImage("assets/icon/potato_1.png")),
                                                  ),
                                                ),
                                                const  Text("Potato Regular"),
                                                const  Text("1kg"),
                                                const  Text("29 tk"),

                                              ],
                                            ),
                                          ),


                                          InkWell(
                                            onTap: () {

                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 30,
                                              width: FullWidth(context),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black, width: 1
                                                  )
                                              ),
                                              child:const Text("Add to bag"),
                                            ),
                                          )
                                        ],
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),



                  ],
                ),

              ],
            ),
          ),
        );

  }
}
