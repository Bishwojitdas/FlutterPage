import 'package:flutter/material.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class CreativeTab extends StatefulWidget {
  const CreativeTab({Key? key}) : super(key: key);

  @override
  State<CreativeTab> createState() => _CreativeTabState();
}

String? selected = "";


class _CreativeTabState extends State<CreativeTab> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Container(
                height: FullHeight(context),
                width: FullWidth(context),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: FullWidth(context),
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.white60,
                              Colors.white54
                            ],)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 8, top: 8, bottom: 8.0),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding:  EdgeInsets.all(5),
                                      child: Icon(Icons.call, color: Colors.black, ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text("01777308777", style: LatoRegular.copyWith(fontSize: 18, color: Colors.black),),
                                    )
                                  ],

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 8, top: 8, bottom: 8.0),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.mail, color: Colors.black, ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("help@creativeitinstitute.com", style: LatoRegular.copyWith(fontSize: 18, color: Colors.black),),
                                    )
                                  ],

                                ),
                              ),
                            ),
                            Image(image: AssetImage("assets/icon/creativit.png")),
                            DropdownButton(
                                icon: Icon(Icons.more_vert, color: Colors.red, size: 30,),
                                style: TextStyle(fontSize: 20, color: Colors.indigo), items: const [
                                  DropdownMenuItem(
                                      value: "?????????",
                                      child: Text("?????????")),
                                  DropdownMenuItem(
                                      value: "?????????????????? ????????????????????????",
                                      child: Text("?????????????????? ????????????????????????")),
                                  DropdownMenuItem(
                                      value: "???????????????????????? ????????????",
                                      child: Text("???????????????????????? ????????????")),
                                  DropdownMenuItem(
                                      value: "???????????????????????????????????????",
                                      child: Text("???????????????????????????????????????")),
                                  DropdownMenuItem(
                                      value: "?????????????????????",
                                      child: Text("?????????????????????")),
                                ],
                                onChanged: (value){
                                  setState(() {
                                    selected=value;
                                  });
                                }),
                            // InkWell(
                            //     onTap: () {
                            //
                            //     },
                            //     child:
                            //     Container(
                            //       height: 50,
                            //       width: 100,
                            //       decoration:  const BoxDecoration(
                            //         gradient: LinearGradient(colors: [
                            //           Colors.red, Colors.redAccent
                            //         ]),
                            //         borderRadius: BorderRadius.all(Radius.circular(20)),
                            //       ),
                            //       child: Row(
                            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //         children: [
                            //           const Padding(
                            //             padding: EdgeInsets.all(8.0),
                            //             child: Icon(Icons.menu_book_outlined, color: Colors.white,),
                            //           ),
                            //           Padding(
                            //             padding: const EdgeInsets.all(8.0),
                            //             child: Text("?????????????????? ???????????????", style: LatoRegular.copyWith(fontSize: 15, color: Colors.white),),
                            //           ),
                            //
                            //         ],
                            //       ),
                            //     )
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        width: FullWidth(context),
                        color: Colors.redAccent.withOpacity(0.2),
                        child: Column(
                          children: [
                            Container(
                              height: 410,
                              width: FullWidth(context)/1.1,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 450,
                                      width: FullWidth(context)/2.5,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children:const [
                                              Icon(Icons.verified, color: Colors.red,),
                                              Text(" ????????? ???????????? ???????????? ????????????????????? ?????????????????????????????????", style: TextStyle(color: Colors.black
                                                  , fontSize: 17),),
                                            ],
                                          ),
                                          const Text("??????????????????????????? ???????????? ?????????", style: TextStyle(color: Colors.black, fontSize: 30,
                                              fontWeight: FontWeight.bold),),
                                          const Text("????????????????????? ????????????????????????????????????", style: TextStyle(color: Colors.red, fontSize: 40,
                                              fontWeight: FontWeight.bold),),
                                          const Text("?????????????????? ?????????????????? ?????? ????????????????????? ??????????????????????????? ???????????? ??????????????????????????? ???????????? ?????????????????????????????? ???????????????????????? ??????????????? ??????????????????????????? ???????????? ???????????????????????????????????? "
                                              "?????????????????? ?????????????????? ???????????? ???????????????????????? ??????????????? ???????????? ????????? ???????????? ????????? ??????????????? ????????????????????? ??????????????????", style: TextStyle(
                                              fontSize: 15, color: Colors.black
                                          ),),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                    onTap: () {

                                                    },
                                                    child:
                                                    Container(
                                                      decoration:  const BoxDecoration(
                                                        gradient: LinearGradient(colors: [
                                                          Colors.red, Colors.redAccent
                                                        ]),
                                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          const Padding(
                                                            padding: EdgeInsets.all(5),
                                                            child: Icon(Icons.menu_book_outlined, color: Colors.white,),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Text("?????????????????? ???????????????", style: LatoRegular.copyWith(fontSize: 15, color: Colors.white),),
                                                          ),

                                                        ],
                                                      ),
                                                    )
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                    onTap: () {

                                                    },
                                                    child:
                                                    Container(
                                                      decoration:  const BoxDecoration(
                                                        gradient: LinearGradient(colors: [
                                                          Colors.red, Colors.redAccent
                                                        ]),
                                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          const Padding(
                                                            padding: EdgeInsets.all(5),
                                                            child: Icon(Icons.menu_book_outlined, color: Colors.white,),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Text("???????????? ???????????? ?????????????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
                                                          ),

                                                        ],
                                                      ),
                                                    )
                                                ),
                                              ),
                                            ],),
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
                                                      width: 400,
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(10),
                                                        child: Text("??????????????? ?????????????????? ISO ?????????????????????????????? ???????????? ????????????????????? ??????????????????????????????",
                                                          style: LatoRegular.copyWith(fontSize: 20, color: Colors.black),),
                                                      ),
                                                    )
                                                ),
                                              ),
                                            ],)
                                        ],

                                      ),
                                    ),
                                    Padding(
                                      padding:  const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: FullWidth(context)/2.3,
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: FullHeight(context),
                        width: FullWidth(context),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: FullWidth(context),
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                                          width: 150,
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
                              height: 700,
                              width: FullWidth(context)/1.2,
                              child: Column(
                                children: [
                                  Column(
                                    children: const[
                                      Text("????????????????????? ???????????????????????????", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("????????? ??? ??????????????? ??????????????? ???????????????????????? ?????? ?????????????????????????????? ?????????????????? ?????????????????? ????????????, ???????????? ??????????????? ?????????????????? ??????????????? ?????????????????? "
                                            "??????????????? ?????????????????? ???????????? ???????????? ??????????????? ???????????????????????? ?????????????????? ???"
                                            "??? ?????????????????? ?????????????????? ??????????????? ???????????? ?????????????????? ?????????????????? ????????????", style: TextStyle(fontSize: 20,),),
                                      )
                                    ],
                                  ),
                                  Row(children: [
                                    Container(
                                      height: 200,
                                      width: 200,
                                      color: Colors.black,
                                    )
                                  ],)
                                ],
                              ),
                            )


                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        )
       );
  }
}
