import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/model/youtubeModel.dart';
import 'package:link_up_pages/screen/utils/customiazationFont.dart';
import 'package:link_up_pages/youtube/youtubeDrawer.dart';

class MobileDesign extends StatefulWidget {
  const MobileDesign({Key? key}) : super(key: key);

  @override
  State<MobileDesign> createState() => _MobileDesignState();
}

class _MobileDesignState extends State<MobileDesign>{
  

  @override
  Widget build(BuildContext context) {

    var _scaffoldKey=GlobalKey<ScaffoldState>();


    return  SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(

              leading:
              InkWell(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2)
                        ),
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/icon/drawer_color.png",
                            fit: BoxFit.cover,),

                        ),

                      ),
                    ),
                  ],
                ),
              ),

              backgroundColor: Colors.white,
              title: InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                            width: FullWidth(context)/16,
                            child: const Icon(Icons.video_collection, color: Colors.red, size: 25,)),
                        Text("YoutubeBD", style: ChivoMonoBold.copyWith(fontSize: 16, color: Colors.black),)
                      ],
                    )
                  ),
                ),
              ),
              actions: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 40,
                        width: 35,
                        child: const Icon(Icons.search,color: Colors.black,size: 25,),
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 40,
                        width: 35,
                        child: const Icon(Icons.mic,color: Colors.black,size: 25,),

                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 40,
                        width: 35,
                        child: const Icon(Icons.video_call,color: Colors.black,size: 25,),
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Container(
                        height: 40,
                        width: 35,
                        child: const Icon(Icons.notification_add,color: Colors.black,size: 25,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 40,
                        width: 40,
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
                    ),
                  ],
                )
              ],
            ),
          drawer: YoutubeDrawer(),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 60,
                  width: FullWidth(context),
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
              ),
              
              
              SizedBox(height: 10,),
              Container(
                height: FullHeight(context)/2.5,
                width: FullWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children:[
                        Container(
                          height: FullHeight(context)/3.4,
                          width: FullWidth(context),
                          decoration: const BoxDecoration(
                              color: Colors.grey
                          ),
                        ),
                        const Text("Video not displayed")
                      ]
                    ),
                    SizedBox(height: 5,),
                    Text("Ban vs India 2nd Test Day 3 Full Match Highlights"),
                    Row(
                      children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {

                           },
                           child:Container(
                             alignment: Alignment.center,
                             height: 35,
                             width: 130,
                             decoration: const BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(20)),
                               color: Colors.grey,
                             ),
                             child:  Text("Subscribe", style: ChivoMonoBold.copyWith(fontSize: 18),),
                           ),
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {

                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.thumb_up_sharp,color: Colors.black,),
                                  Text("841K"),
                                  Icon(Icons.thumb_down,color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ),
              SizedBox(height: 10,),
              Container(
                height: FullHeight(context)/2.5,
                width: FullWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.center,
                        children:[
                          Container(
                            height: FullHeight(context)/3.4,
                            width: FullWidth(context),
                            decoration: const BoxDecoration(
                                color: Colors.grey
                            ),
                          ),
                          const Text("Video not displayed")
                        ]
                    ),
                    SizedBox(height: 5,),
                    Text("Ban vs India 2nd Test Day 3 Full Match Highlights"),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {

                            },
                            child:Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                              child:  Text("Subscribe", style: ChivoMonoBold.copyWith(fontSize: 18),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {

                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.thumb_up_sharp,color: Colors.black,),
                                  Text("841K"),
                                  Icon(Icons.thumb_down,color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ),
              SizedBox(height: 10,),
              Container(
                height: FullHeight(context)/2.5,
                width: FullWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.center,
                        children:[
                          Container(
                            height: FullHeight(context)/3.4,
                            width: FullWidth(context),
                            decoration: const BoxDecoration(
                                color: Colors.grey
                            ),
                          ),
                          const Text("Video not displayed")
                        ]
                    ),
                    SizedBox(height: 5,),
                    Text("Ban vs India 2nd Test Day 3 Full Match Highlights"),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {

                            },
                            child:Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                              child:  Text("Subscribe", style: ChivoMonoBold.copyWith(fontSize: 18),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {

                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.thumb_up_sharp,color: Colors.black,),
                                  Text("841K"),
                                  Icon(Icons.thumb_down,color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ),
              SizedBox(height: 10,),
              Container(
                height: FullHeight(context)/2.5,
                width: FullWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        alignment: Alignment.center,
                        children:[
                          Container(
                            height: FullHeight(context)/3.4,
                            width: FullWidth(context),
                            decoration: const BoxDecoration(
                                color: Colors.grey
                            ),
                          ),
                          const Text("Video not displayed")
                        ]
                    ),
                    SizedBox(height: 5,),
                    Text("Ban vs India 2nd Test Day 3 Full Match Highlights"),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {

                            },
                            child:Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 130,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                              child:  Text("Subscribe", style: ChivoMonoBold.copyWith(fontSize: 18),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {

                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.thumb_up_sharp,color: Colors.black,),
                                  Text("841K"),
                                  Icon(Icons.thumb_down,color: Colors.black,),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ),

            ],
          ),

          )
    );
  }
}
