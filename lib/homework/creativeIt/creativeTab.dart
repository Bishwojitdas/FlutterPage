import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/utils/customiazationFont.dart';

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
                                      value: "হোম",
                                      child: Text("হোম")),
                                  DropdownMenuItem(
                                      value: "আমাদের সম্পর্কে",
                                      child: Text("আমাদের সম্পর্কে")),
                                  DropdownMenuItem(
                                      value: "সাফল্যের গল্প",
                                      child: Text("সাফল্যের গল্প")),
                                  DropdownMenuItem(
                                      value: "ফ্রিল্যান্সিং",
                                      child: Text("ফ্রিল্যান্সিং")),
                                  DropdownMenuItem(
                                      value: "যোগাযোগ",
                                      child: Text("যোগাযোগ")),
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
                            //             child: Text("ব্রাউজ কোর্স", style: LatoRegular.copyWith(fontSize: 15, color: Colors.white),),
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
                                              Text(" দেশ সেরা আইটি ট্রেনিং ইনস্টিটিউটে", style: TextStyle(color: Colors.black
                                                  , fontSize: 17),),
                                            ],
                                          ),
                                          const Text("ক্যারিয়ার শুরু হোক", style: TextStyle(color: Colors.black, fontSize: 30,
                                              fontWeight: FontWeight.bold),),
                                          const Text("দক্ষতার আত্মবিশ্বাসে", style: TextStyle(color: Colors.red, fontSize: 40,
                                              fontWeight: FontWeight.bold),),
                                          const Text("অভিজ্ঞ মেন্টর আর আপডেটেড কারিকুলাম নিয়ে ক্রিয়েটিভ আইটি ইনস্টিটিউট প্রস্তুত আপনার ক্যারিয়ার গড়ার অগ্রযাত্রায়। "
                                              "আমাদের ৩০টিরও বেশি ট্রেন্ডি কোর্স থেকে আজই বেছে নিন আপনার পছন্দের কোর্স।", style: TextStyle(
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
                                                            child: Text("ব্রাউজ কোর্স", style: LatoRegular.copyWith(fontSize: 15, color: Colors.white),),
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
                                                            child: Text("জয়েন ফ্রি সেমিনার", style: LatoRegular.copyWith(fontSize: 20, color: Colors.white),),
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
                                                        child: Text("দেশের অন্যতম ISO সার্টিফাইড আইটি ট্রেনিং ইনস্টিটিউট",
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
                                              const Text("ডিজাইন এন্ড মাল্টিমিডিয়া",textAlign: TextAlign.center,
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
                                              const Text("ওয়েব এন্ড সফটওয়্যার",textAlign: TextAlign.center,
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
                                              const Text("ডিজিটাল মার্কেটিং",textAlign: TextAlign.center,
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
                                              const Text("3D অ্যানিমেশন এন্ড ভিজ্যুয়ালাইজেশন",textAlign: TextAlign.center,
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
                                              const Text("সাইবার সিকিউরিটি",textAlign: TextAlign.center,
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
                                              const Text("নেটওয়ার্কিং টেকনোলজি",textAlign: TextAlign.center,
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
                                              const Text("ফিল্ম এন্ড মিডিয়া",textAlign: TextAlign.center,
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
                                              const Text("ইংলিশ ল্যাঙ্গুয়েজ",textAlign: TextAlign.center,
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
                                              const Text("রোবটিক্স এন্ড অটোমেশন",textAlign: TextAlign.center,
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
                                      Text("জনপ্রিয় কোর্সসমূহ", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("দেশ ও দেশের বাইরে বর্তমানে যে স্কিলগুলোর চাহিদা সবচেয়ে বেশি, সেসব দিয়েই সাজানো হয়েছে আমাদের "
                                            "কোর্স লিস্ট। এখান থেকে আপনার সুবিধামত অনলাইন ব"
                                            "া অফলাইন কোর্সে এনরোল করতে পারবেন যেকোনো সময়।", style: TextStyle(fontSize: 20,),),
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
