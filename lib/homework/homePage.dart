import 'package:flutter/material.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          body: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Welcome Back", style: ChivoMonoMedium.copyWith(fontSize: 20 ),),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Bishwojit Das", style: ChivoMonoBold.copyWith(fontSize: 35 ),),
                  ),
                  const SizedBox(height: 30,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width/1.45,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Search here",
                            prefixIcon: Icon(Icons.search, color: Colors.black,),
                            focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(color: Colors.green, width: 2)
                              ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 2)
                            )
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2)
                          ),
                          child: ClipRRect(

                            child: Image.asset(
                              "assets/icon/eualizer_green.png",
                              fit: BoxFit.cover,),

                          ),
                        ),
                      ),
                    ],

                  ),
                 const SizedBox(height: 30,),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
                          child: Text("Choose Subjects", style: LatoBold.copyWith(fontSize: 25),),
                        ),

                        Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width,

                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                  child: InkWell(
                                    onTap: () {

                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                             color: Colors.cyan
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              child: Image.asset(
                                                "assets/icon/english_1.png",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        Text("English", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                           color: Colors.lime
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              child: Image.asset(
                                                "assets/icon/science_2.png",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        Text("Science", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.purple
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              child: Image.asset(
                                                "assets/icon/physics_1.png",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        Text("Physics", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.amber
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              child: Image.asset(
                                                "assets/icon/hindi_1.png",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        Text("Hindi", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color:Colors.grey
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              child: Image.asset(
                                                "assets/icon/health_1.png",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        Text("Phy. Edu.", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.indigoAccent
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              child: Image.asset(
                                                "assets/icon/biology_1.png",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        Text("Biology", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.cyan
                                          ),
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                child: Image.asset(
                                                  "assets/icon/agriculture_1.png",
                                                  fit: BoxFit.cover,),

                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("Agriculture", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
                          child: Text("Live Classes", style: LatoBold.copyWith(fontSize: 25),),
                        ),
                        Container(
                          height: 230,
                          width: MediaQuery.of(context).size.width,

                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                  child: InkWell(
                                    onTap: () {

                                    },
                                    child: Container(
                                      height: 200,
                                      width: FullWidth(context)/1.7,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 130,
                                            width: FullWidth(context)/1.7,
                                            decoration:  BoxDecoration(
                                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                border: Border.all(color: Colors.black)
                                            ),
                                            child: ClipRRect(
                                              borderRadius:const BorderRadius.all(Radius.circular(10)),
                                              child: Image.asset(
                                                "assets/images/bishwojit_cls_2.jpg",
                                                fit: BoxFit.cover,),

                                            ),
                                          ),
                                          SizedBox(height: 3,),
                                          Text("Everything you need to know about global warming by Bishwojit Das",
                                            style: LatoBold.copyWith(fontSize: 18),),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 130,
                                          width: FullWidth(context)/1.5,
                                          decoration:  BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: ClipRRect(
                                            borderRadius:const BorderRadius.all(Radius.circular(10)),
                                            child: Image.asset(
                                              "assets/images/rony_1.jpg",
                                              fit: BoxFit.cover,),

                                          ),
                                        ),
                                        Text("Virus Pendemic: things you", style: LatoBold.copyWith(fontSize: 18),),
                                        Text("should know from history", style: LatoBold.copyWith(fontSize: 18),),
                                        Text("by Rony Joshy ", style: LatoRegular.copyWith(fontSize: 15),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: FullWidth(context)/1.5,
                                          decoration:  BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: ClipRRect(

                                            child: Image.asset(
                                              "assets/icon/physics_1.png",
                                              fit: BoxFit.cover,),

                                          ),
                                        ),
                                        Text("Physics", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: ClipRRect(

                                            child: Image.asset(
                                              "assets/icon/hindi_1.png",
                                              fit: BoxFit.cover,),

                                          ),
                                        ),
                                        Text("Hindi", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: ClipRRect(

                                            child: Image.asset(
                                              "assets/icon/health_1.png",
                                              fit: BoxFit.cover,),

                                          ),
                                        ),
                                        Text("Phy. Edu.", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: ClipRRect(

                                            child: Image.asset(
                                              "assets/icon/biology_1.png",
                                              fit: BoxFit.cover,),

                                          ),
                                        ),
                                        Text("Biology", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration:  BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          child: ClipRRect(

                                            child: Image.asset(
                                              "assets/icon/agriculture_1.png",
                                              fit: BoxFit.cover,),

                                          ),
                                        ),
                                        Text("Agriculture", style: LatoRegular.copyWith(fontSize: 18),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )

                ]
              ),
            ],
          ),
        ));

  }
}
