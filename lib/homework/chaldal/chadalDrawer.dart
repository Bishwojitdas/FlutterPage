
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:link_up_pages/homework/chaldal/chadalDropdown.dart';
import 'package:link_up_pages/model/youtubeModel.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class ChaldalDrawer extends StatelessWidget {
  int isChange=0;
  String? selected = "Choose";
  ChaldalDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all( color: Colors.black, width: 1)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                             Container(
                               height: 40,
                               width: 40,
                               child: const Image(image: AssetImage("assets/icon/grocery_2.png")),
                                 ),
                            const Text("Grocery", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
                          ],

                        )
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all( color: Colors.black, width: 1)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Container(
                              height: 40,
                              width: 40,
                              child: const Image(image: AssetImage("assets/icon/pharmacy.png")),
                            ),
                            const Text("Pharmacy", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
                          ],

                        )
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            border: Border.all( color: Colors.black, width: 1)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Container(
                              height: 40,
                              width: 40,
                              child: const Image(image: AssetImage("assets/icon/cookups.png")),
                            ),
                            const Text("Cookups", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)
                          ],

                        )
                    ),
                  ),
                ],
              )
          ),
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

                            Text("Egg club", style: LatoBold.copyWith(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                width: 40,
                                  color: Colors.black,
                                  child: Text("62", style: LatoBold.copyWith(fontSize: 20, color: Colors.white),)),
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

                            Text("Daily Deals", style: LatoBold.copyWith(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                width: 40,
                                  color: Colors.white,
                                  child: Icon(Icons.local_offer)),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/winter_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/flash_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
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
                       ChadalDropdown();
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/food_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Food", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/winter_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/flash_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
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
                        ChadalDropdown();
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/food_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Food", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/winter_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/flash_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
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
                        ChadalDropdown();
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/food_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Food", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/winter_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Winter Collection", style: LatoBold.copyWith(fontSize: 20),),
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/flash_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Flash Sales", style: LatoBold.copyWith(fontSize: 20),),
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
                        ChadalDropdown();
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
                              Container(
                                height: 30,
                                width: 30,
                                child: const Image(image: AssetImage("assets/icon/food_1.png")),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Food", style: LatoBold.copyWith(fontSize: 20),),
                              ),
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
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text("Subcriptions", style: ChivoMonoBold.copyWith(fontSize: 20),),
          ),
          Container(
            height: 130,
            width: FullWidth(context),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black, width: 2)
                )
            ),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: subcriptionList.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person, ),
                    title: Text(subcriptionList[index].name.toString(), style: ChivoMonoBold.copyWith(fontSize: 20)),
                    subtitle: Text(subcriptionList[index].url.toString(), style: LatoRegular.copyWith(fontSize: 20)),

                  );
                })

            ),
          ),

          Container(
            height: 210,
            width: FullWidth(context),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black, width: 2))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Text("More from Youtube", style: ChivoMonoBold.copyWith(fontSize: 20),),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.library_add_check_rounded, color:  Colors.black,),

                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Creator Studio", style: LatoBold.copyWith(fontSize: 20),),
                          ),
                          Expanded(child: Container(

                          )),
                        ],
                      ),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pop(context);

                  },
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.video_collection_sharp, color:  Colors.black,),

                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Your Videos", style: LatoBold.copyWith(fontSize: 20),),
                          ),
                          Expanded(child: Container(

                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.history, color:  Colors.black,),

                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Watch Later", style: LatoBold.copyWith(fontSize: 20),),
                          ),
                          Expanded(child: Container(

                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    decoration: const BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.thumb_up_alt_sharp, color:  Colors.black,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Liked Videos", style: LatoBold.copyWith(fontSize: 20),),
                          ),
                          Expanded(child: Container(

                          )),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            height: 50,
            width: FullWidth(context),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person, ),
                  Text("Setting", style: ChivoMonoBold.copyWith(fontSize: 20),)
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }

}
