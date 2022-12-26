import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/model/youtubeModel.dart';
import 'package:link_up_pages/screen/utils/customiazationFont.dart';
import 'package:link_up_pages/youtube/youtubeDrawer.dart';

class WebDesign extends StatefulWidget {
  const WebDesign({Key? key}) : super(key: key);

  @override
  State<WebDesign> createState() => _WebDesignState();
}

var _scaffoldKey=GlobalKey<ScaffoldState>();

class _WebDesignState extends State<WebDesign> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            drawer: YoutubeDrawer(),
            body: ListView(
              children: [
                Container(
                  height: 60,
                  width: FullWidth(context),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
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

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.video_collection, color: Colors.red, size: 30,),
                              Text(" YoutubeBD", style: ChivoMonoBold.copyWith(fontSize: 20, color: Colors.black),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 10),
                        child: Container(
                          height: 40,
                          width: FullWidth(context)/2.5,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.black, width: 1)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Container(
                                height: 40,
                                width: FullWidth(context)/3,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                    borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                                        bottomLeft: Radius.circular(20))
                                ),
                                child:  const TextField(
                                  decoration:  InputDecoration(
                                    prefix: Icon(Icons.search),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black, width: 1),
                                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                                            bottomLeft: Radius.circular(20)),
                                      ),
                                    focusColor: Colors.green,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                                          bottomLeft: Radius.circular(20)),
                                      borderSide: BorderSide(color: Colors.green, width: 1),
                                    )
                                  ),
                                ),
                              ),
                              IconButton(onPressed: () {

                              }, icon: Icon(Icons.search))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {

                          },
                          child: const Icon(Icons.mic,color: Colors.black,size: 25,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {

                          },
                          child: const Icon(Icons.video_call,color: Colors.black,size: 25,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {

                          },
                          child: const Icon(Icons.notification_add,color: Colors.black,size: 25,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 10, bottom: 10, left: 10),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(100)),
                              border: Border.all(color: Colors.white, width: 2)
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(100)),
                            child: Image.asset(
                              "assets/images/bish_cls_party_1.jpg",
                              fit: BoxFit.cover,),

                          ),

                        ),
                      )

                    ],
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: FullHeight(context),
                      width: FullWidth(context)/9.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {

                              },
                              child:SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home, size: 25,),
                                    Text("Home", style: ChivoMonoRegular.copyWith(fontSize: 15),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {

                              },
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                               const Icon(Icons.video_collection_sharp, size: 25,),
                                  Text("Shorts", style: ChivoMonoRegular.copyWith(fontSize: 15),)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {

                              },
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.subscriptions_outlined, size: 25,),
                                  Text("Subcriptions", style: ChivoMonoRegular.copyWith(fontSize: 15),)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {

                              },
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.video_collection_sharp, size: 25,),
                                  Text("Library", style: ChivoMonoRegular.copyWith(fontSize: 15),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: FullWidth(context)/1.13,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: subcriptionList.length,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 60,
                                    width: 120,
                                    decoration: const BoxDecoration(color: Colors.grey,
                                        borderRadius:BorderRadius.all(Radius.circular(20)) ),
                                    child: TextButton(onPressed: () {

                                    }, child: Text("${subcriptionList[index].name.toString()}",style:
                                    ChivoMonoBold.copyWith(fontSize: 18, color: Colors.black) ),),
                                  ),
                                );
                              })

                          ),
                        ),


                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            height: FullHeight(context),
                            width: FullWidth(context)/1.15,
                            child: GridView.count( crossAxisCount: 3,
                                children: List.generate(subcriptionList.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.all(Radius.circular(15)),

                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 180,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(10)),
                                                border: Border.all(color: Colors.white, width: 2)
                                            ),
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(10)),
                                              child: Image.network(
                                                "https://img1.hscicdn.com/image/upload/f_auto,t_ds_wide_w_800,q_50/lsci/db/PICTURES/CMS/MULTIMEDIA/124600/124673.thumb.jpg",
                                                fit: BoxFit.cover,),

                                            ),

                                          ),
                                          Text(subcriptionList[index].url, style: ChivoMonoBold,),
                                        ],
                                      ),
                                    ),
                                  );
                                })
                            ),
                          ),
                        )

                      ],
                    ),



                  ],
                )
              ],
            ),
          ),
        );

  }
}
