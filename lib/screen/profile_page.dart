import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/stack_demo.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: const DecorationImage(image: NetworkImage("https://backgroundabstract.com/wp-content/uploads/edd/2022/01/gradient-dynamic-blue-l"
                    "ines-background_23-2148995756-e1656080867962.jpg"),
                  fit:BoxFit.cover, ),
                borderRadius:const BorderRadius.all(Radius.circular(15)),
                border: Border.all(color: Colors.blueAccent,width: 2)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Stack_Demo(),));
                      }, icon: const Icon(Icons.arrow_back, color: Colors.white, size: 23,)),
                      const Text("Profile", style: TextStyle(color: Colors.white, fontSize: 15),),
                      const Icon(Icons.settings, color: Colors.white, size: 23, ),
                    ],
                  ),
                ),Column(
                  children: [
                    const SizedBox(height: 15),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.white, width: 2)
                      ),
                      child: ClipRRect(
                        borderRadius:const BorderRadius.all(Radius.circular(100)),
                        child: Image.asset("assets/images/bish_cls_party_1.jpg",
                          fit: BoxFit.cover,),

                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 2, left: 3, right: 3),
                          child: Text("Bishwojit Chandra Das", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,
                              color: Colors.white),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text("Junior App Developer", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,
                              color: Colors.white),),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        const Text("10000  Followers", style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        Container(
                          height: 35,
                          width: 2,
                          color: Colors.grey,
                        ),
                        const Text("1200  Following", style: TextStyle(color: Colors.white, fontSize: 13)
                          ,)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.mail, color: Colors.black, size: 25,),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Email", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text("bishwoji88@gmail.com", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.phone_android_sharp, color: Colors.black, size: 25,),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Mobile", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text("01868690289", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.wb_twighlight, color: Colors.black, size: 25,),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Twitter", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text("@bishwojit012", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              )
            ],
          )
          ,const SizedBox(height: 10,),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.youtube_searched_for_outlined, color: Colors.black, size: 25,),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Youtube", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text("Bishwojit Das", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.facebook_outlined, color: Colors.black, size: 25,),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("Facebook", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text("www.facebook.com/bishwojit.Bishwojit.das", style: TextStyle(color: Colors.black,
                            fontSize: 14, fontWeight: FontWeight.w300),),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
