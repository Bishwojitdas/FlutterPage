import 'package:flutter/material.dart';
import 'package:link_up_pages/provider/albumProvider.dart';
import 'package:link_up_pages/provider/post_Provider.dart';
import 'package:link_up_pages/screen/stack_demo.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  runApp(MultiProvider(
      providers: providers,
      child: const MyApp())
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          body: Padding(
            padding: const EdgeInsets.all(40),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 360,
                  width: MediaQuery.of(context).size.width/1.3,
                  decoration: const BoxDecoration(borderRadius:BorderRadius.only(bottomLeft: Radius.circular(180),
                      topLeft: Radius.circular(20),topRight: Radius.circular(20),
                      bottomRight: Radius.circular(180)), ),
                  child:  ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(180),
                      topLeft: Radius.circular(20),topRight: Radius.circular(20),
                      bottomRight: Radius.circular(180),
                    ),
                    child:SizedBox(
                      height: 360,
                      width: MediaQuery.of(context).size.width/1.3,
                      child: const Image(image: AssetImage("assets/images/abstract_7.jpg",),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ) ,
                ),
                const SizedBox(height: 90,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Manage your", style: TextStyle(color: Colors.indigo,fontSize: 40,
                              fontWeight: FontWeight.bold ),),
                          Text("daily tasks", style: TextStyle(color: Colors.indigo,fontSize: 40,
                              fontWeight: FontWeight.bold ),),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Team and project management with", style: TextStyle(color:
                          Colors.indigo,fontSize: 18,fontWeight: FontWeight.w400 ),),
                          Text("solution providing app", style: TextStyle(color: Colors.indigo,fontSize: 18,
                              fontWeight: FontWeight.w400 ),),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(100),
                                ), color: Colors.white),

                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Stack_Demo()));

                                },
                                  child: const Text("Get Started", style: TextStyle(color: Colors.indigo,
                                      fontSize: 22, fontWeight: FontWeight.bold ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),


                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
    );

  }
}


List<SingleChildWidget>providers=[
  ChangeNotifierProvider<PostProvider>(create:(_)=> PostProvider()),
  ChangeNotifierProvider<AlbumProvider>(create:(_)=> AlbumProvider()),
];

