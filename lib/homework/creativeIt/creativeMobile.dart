import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/creativeIt/creativeDrawer.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class CreativeMobile extends StatefulWidget {
  const CreativeMobile({Key? key}) : super(key: key);

  @override
  State<CreativeMobile> createState() => _CreativeMobileState();
}

var _scaffoldKey=GlobalKey<ScaffoldState>();

class _CreativeMobileState extends State<CreativeMobile> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          key: _scaffoldKey,
          drawer: const CreativeDrawer(),
          body: ListView(
            children: [
              const SizedBox(height: 15,),
              Container(
                width: FullWidth(context),
                height: 780,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: FullWidth(context)/1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            child: Container(
                                height: 35,
                                width: 35,
                                child: const Image(image: AssetImage("assets/icon/drawer_color.png"))),
                          ),
                          const SizedBox(width: 60,),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              onTap: () {
                                _scaffoldKey.currentState?.openDrawer();
                              },
                              child: Container(
                                  height: 50,
                                  child: const Image(image: AssetImage("assets/icon/creativit.png"))),
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Container(
                      height: 450,
                      width: FullWidth(context)/1.1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 5),
                            child: Row(
                              children:const [
                                Icon(Icons.verified, color: Colors.red,),
                                Text(" ????????? ???????????? ???????????? ????????????????????? ?????????????????????????????????", style: TextStyle(color: Colors.black
                                    , fontSize: 18),),
                              ],
                            ),
                          ),
                          const Text("??????????????????????????? ???????????? ?????????", style: TextStyle(color: Colors.black, fontSize: 35,
                              fontWeight: FontWeight.bold),),
                          const Text("????????????????????? ????????????????????????????????????", style: TextStyle(color: Colors.red, fontSize: 40,
                              fontWeight: FontWeight.bold),),
                          const Text("?????????????????? ?????????????????? ?????? ????????????????????? ??????????????????????????? ???????????? ??????????????????????????? ???????????? ?????????????????????????????? ???????????????????????? ??????????????? ??????????????????????????? ???????????? ???????????????????????????????????? "
                              "?????????????????? ?????????????????? ???????????? ???????????????????????? ??????????????? ???????????? ????????? ???????????? ????????? ??????????????? ????????????????????? ??????????????????", style: TextStyle(
                              fontSize: 18, color: Colors.black
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 80, top:5, bottom:5, right: 8),
                            child: InkWell(
                                onTap: () {

                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: FullWidth(context)/2,
                                  decoration:  const BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.red, Colors.redAccent
                                    ]),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(Icons.menu_book_outlined, color: Colors.white,),
                                      ),
                                      Text("?????????????????? ???????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
                                      const Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                                      ),

                                    ],
                                  ),
                                )
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {

                                  },
                                  child:
                                  Container(
                                      decoration:  const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(100)),
                                      ),
                                      child: const Image(image: AssetImage("assets/icon/iso_1.png"),
                                        fit: BoxFit.cover,)
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child: Container(
                                      width: FullWidth(context)/1.35,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text("??????????????? ?????????????????? ISO ?????????????????????????????? ???????????? ????????????????????? ??????????????????????????????",
                                          style: LatoRegular.copyWith(fontSize: 18, color: Colors.black),),
                                      ),
                                    )
                                ),
                              ),
                            ],)
                        ],

                      ),
                    ),
                    Container(
                      height: 230,
                      width: FullWidth(context)/1.1,
                      child:  Padding(
                        padding:  const EdgeInsets.all(8.0),
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white, width: 3
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(20))
                          ),
                          child:const ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              child:  Image(image: AssetImage("assets/icon/creativeit_2.png"))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1100,
                width: FullWidth(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      height: 160,
                      width: FullWidth(context)/1.1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/multimedia_1.png"),
                                            )),
                                      ),
                                      const Text("?????????????????? ???????????? ????????????????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/web_1.png"),
                                            )),
                                      ),
                                      const Text("???????????? ???????????? ???????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/dm.png"),
                                            )),
                                      ),
                                      const Text("????????????????????? ???????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/animation.png"),
                                            )),
                                      ),
                                      const Text("3D ?????????????????????????????? ???????????? ?????????????????????????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/cy.png"),
                                            )),
                                      ),
                                      const Text("?????????????????? ???????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/net.png"),
                                            )),
                                      ),
                                      const Text("????????????????????????????????? ????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/ve.png"),
                                            )),
                                      ),
                                      const Text("??????????????? ???????????? ??????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/lg.png"),
                                            )),
                                      ),
                                      const Text("??????????????? ????????????????????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration:const BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey, spreadRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Container(
                                            height: 35,
                                            width: 35,
                                            child: const Image(image: AssetImage("assets/icon/robot.png"),
                                            )),
                                      ),
                                      const Text("???????????????????????? ???????????? ?????????????????????",textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Container(
                      height: 820,
                      width: FullWidth(context)/1.1,
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text("????????????????????? ???????????????????????????", style: LatoRegular.copyWith(fontSize: 40,
                                color: Colors.black)),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("????????? ??? ??????????????? ??????????????? ???????????????????????? ?????? ?????????????????????????????? ?????????????????? ?????????????????? ????????????, ???????????? ??????????????? ?????????????????? ??????????????? ?????????????????? "
                                    "??????????????? ?????????????????? ???????????? ???????????? ??????????????? ???????????????????????? ?????????????????? ???"
                                    "??? ?????????????????? ?????????????????? ??????????????? ???????????? ?????????????????? ?????????????????? ????????????", style: TextStyle(fontSize: 20,),),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 220,
                            width: FullWidth(context)/1.1,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/graphics_design_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/responsive_wd_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/digital_marketing_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/three_d_animation_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/cy_security_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/networking_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/video_editing_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/eng_lang_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/cl_comp_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {

                                      },
                                      child: Container(
                                        height: 200,
                                        width: FullWidth(context)/1.2,
                                        decoration:const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(color: Colors.grey, spreadRadius: 2)
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(15))
                                        ),
                                        child:const ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                          child:  Image(image: AssetImage("assets/icon/block_chain_1.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: FullWidth(context)/1.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                                  child: Text("???????????????+", style: LatoRegular.copyWith(fontSize: 40,
                                      color: Colors.black, fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only( bottom: 5, right: 5),
                                  child: Text("??????????????????????????? ?????????????????????????????? ??????????????????????????? ??????????????? ???????????? ???????????????",
                                      style: LatoRegular.copyWith(fontSize: 25,
                                      color: Colors.black, fontWeight: FontWeight.bold)),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                                  child: Text("?????????????????????????????? ????????????-??? ?????? ?????????????????????????????? ???????????????????????????????????? ???????????? ??????????????????????????????????????? ????????? ??????????????? ???????????? ????????? ????????? "
                                      "??????????????? ????????? ???????????????????????????????????????, ??????????????? ???????????????????????? ?????? ??????????????? ????????? ????????? ?????????????????????????????? ????????????????????? ????????????????????????????????? ??????????????? ???????????????"
                                      " ???????????????????????? ?????????????????? ?????? ??????????????? ???????????????/????????????????????? ????????? ?????????????????????????????? ???????????????"
                                      " ??????????????????????????????????????? ?????????????????????????????? ?????????????????? ????????? ????????? ????????????",
                                    style: TextStyle(fontSize: 20,),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              Container(
                height: 850,
                width: FullWidth(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 400,
                      width: FullWidth(context)/1.1,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                              child: Text("??????%", style: LatoRegular.copyWith(fontSize: 40,
                                  color: Colors.black, fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( bottom: 5, right: 5),
                              child: Text("?????????????????? ?????????",
                                  style: LatoRegular.copyWith(fontSize: 25,
                                      color: Colors.black, fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                              child: Text("???????????????????????????????????? ????????? ??????????????? ???????????? ????????????????????? ?????????????????? ??????????????? ???????????????????????????"
                                  " ????????? ???????????? ????????? ????????? ???????????????????????? ?????? ????????????-???????????? ???????????????????????? ?????????????????? ?????????????????? ?????????????????????"
                                  " ???????????? ???????????? ????????????????????? ??????????????????????????????????????? ????????? ???????????? ???????????? ?????????????????? ?????? ???????????? ??????????????????????????????????????? "
                                  "??????????????? ??????????????? ?????? ????????????????????? ??????????????????????????????????????? ?????????????????? ??????????????????????????????????????? ?????????????????? ????????? ??????????????????????????? ???????????????",
                                style: TextStyle(fontSize: 20,),),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 400,
                      width: FullWidth(context)/1.1,
                      decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                              child: Text("???????????????+", style: LatoRegular.copyWith(fontSize: 40,
                                  color: Colors.black, fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( bottom: 5, right: 5),
                              child: Text("?????????????????????????????? ????????? ???????????? ??????????????????????????????????????? ??????????????????????????????????????? ???????????????",
                                  style: LatoRegular.copyWith(fontSize: 25,
                                      color: Colors.black, fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                              child: Text("??????????????????????????? ?????????????????? ??????????????? ????????? ????????? ????????? ??????????????? ???????????????????????? ???????????? "
                                  "????????? ????????????????????? ?????????????????? ???????????? ????????????????????????????????? ?????????????????????????????????????????? ????????????????????? ????????????????????? ???????????? "
                                  "?????????????????? ???????????? ????????? ????????? ????????????????????? ??????????????????????????? ??????????????? ?????? ????????? ?????????????????? ?????????????????????????????? "
                                  "??????????????? ???????????????????????? ??????????????????????????????????????? ????????? ???????????? ??????????????? ??????????????? ????????????????????? ???????????????????????? ???????????? ",
                                style: TextStyle(fontSize: 20,),),
                            )
                          ],
                        ),
                      ),
                    )


                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}
