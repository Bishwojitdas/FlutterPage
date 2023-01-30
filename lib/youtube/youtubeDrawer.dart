import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:link_up_pages/model/youtubeModel.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class YoutubeDrawer extends StatelessWidget {
  int isChange=0;

   YoutubeDrawer({Key? key}) : super(key: key);


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
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               InkWell(
                 onTap: () {
                   Navigator.pop(context);
                 },
                 child: Container(
                     height: 20,
                     width: 20,
                     child: const Image(image: AssetImage("assets/icon/drawer_color.png"))
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: TextButton(onPressed: (){

                 }, child: Row(
                   children: [
                     const Icon(Icons.video_collection_sharp, color: Colors.red,),
                     Text("Youtube BD", style: ChivoMonoBold.copyWith(
                         color: Colors.red, fontSize: 25
                     ),),
                   ],
                 )),
               ),
               Expanded(child: Container(

               )),

             ],
           )
          ),
          Container(
            height: 130,
            width: FullWidth(context),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black, width: 2))
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.home, color:  Colors.black,),

                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Home", style: LatoBold.copyWith(fontSize: 20),),
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
                      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.app_shortcut_sharp, color:  Colors.black,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Shorts", style: LatoBold.copyWith(fontSize: 20),),
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
                      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.subscriptions, color:  Colors.black,),

                          Padding(
                            padding: const EdgeInsets.only(left: 25, ),
                            child: Text("Subcriptions", style: LatoBold.copyWith(fontSize: 20),),
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
            height: 210,
            width: FullWidth(context),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black, width: 2))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: FullWidth(context),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.all(Radius.circular(20))
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
                            child: Text("Library", style: LatoBold.copyWith(fontSize: 20),),
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
                          const Icon(Icons.history, color:  Colors.black,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("History", style: LatoBold.copyWith(fontSize: 20),),
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
                    Icon(Icons.person, ),
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
