import 'package:flutter/material.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class CreativeWeb extends StatefulWidget {
  const CreativeWeb({Key? key}) : super(key: key);

  @override
  State<CreativeWeb> createState() => _CreativeWebState();
}

class _CreativeWebState extends State<CreativeWeb> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                              Colors.red,
                              Colors.redAccent
                            ],)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50, right: 8, top: 8, bottom: 8.0),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Icon(Icons.call, color: Colors.white, size: 25, ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("01777308777", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
                                    )
                                  ],

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70, right: 8, top: 8, bottom: 8.0),
                              child: InkWell(
                                onTap: () {

                                },
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.mail, color: Colors.white, size: 25, ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("help@creativeitinstitute.com", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
                                    )
                                  ],

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: FullWidth(context)/1.2,
                        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Padding(
                                padding:  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                child: Image(image: AssetImage("assets/icon/creativit.png")),
                              ),
                              const SizedBox(width: 50,),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text("?????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.black),),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text("?????????????????? ????????????????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.black),),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text("???????????????????????? ????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.black),),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text("???????????????????????????????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.black),),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                    onTap: () {

                                    },
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text("?????????????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.black),),
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
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
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(Icons.menu_book_outlined, color: Colors.white,),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("?????????????????? ???????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,),
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                     Container(
                       width: FullWidth(context),
                       color: Colors.redAccent.withOpacity(0.2),
                       child: Column(
                         children: [
                           Container(
                             height: 410,
                             width: FullWidth(context)/1.2,
                             child:Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 children: [
                                   Container(
                                     height: 410,
                                     width: 500,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Row(
                                           children:const [
                                             Icon(Icons.verified, color: Colors.red,),
                                             Text(" ????????? ???????????? ???????????? ????????????????????? ?????????????????????????????????", style: TextStyle(color: Colors.black
                                                 , fontSize: 20),),
                                           ],
                                         ),
                                         const Text("??????????????????????????? ???????????? ?????????", style: TextStyle(color: Colors.black, fontSize: 35,
                                             fontWeight: FontWeight.bold),),
                                         const Text("????????????????????? ????????????????????????????????????", style: TextStyle(color: Colors.red, fontSize: 45,
                                             fontWeight: FontWeight.bold),),
                                         const Text("?????????????????? ?????????????????? ?????? ????????????????????? ??????????????????????????? ???????????? ??????????????????????????? ???????????? ?????????????????????????????? ???????????????????????? ??????????????? ??????????????????????????? ???????????? ???????????????????????????????????? "
                                             "?????????????????? ?????????????????? ???????????? ???????????????????????? ??????????????? ???????????? ????????? ???????????? ????????? ??????????????? ????????????????????? ??????????????????", style: TextStyle(
                                             fontSize: 20, color: Colors.black
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
                                                           child: Text("?????????????????? ???????????????", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
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
                                       width: 520,
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
