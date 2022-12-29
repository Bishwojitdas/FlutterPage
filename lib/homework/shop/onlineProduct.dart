import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/homePage.dart';
import 'package:link_up_pages/homework/shop/orderList.dart';
import 'package:link_up_pages/screen/listview_builder.dart';
import 'package:link_up_pages/screen/utils/customiazationFont.dart';

class OnlineShop extends StatefulWidget {
  const OnlineShop({Key? key}) : super(key: key);

  @override
  State<OnlineShop> createState() => _OnlineShopState();
}

String? selected = "Choose";
int isChange=0;

class _OnlineShopState extends State<OnlineShop> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          body: ListView(
            children: [
             Container(
               height: 60,
               width: FullWidth(context),
               child: Padding(
                 padding: const EdgeInsets.all(10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     IconButton(onPressed: () {

                     }, icon: const Icon(Icons.memory)),
                     Text("XE", style: ChivoMonoBold.copyWith(color: Colors.indigo, fontSize: 20),),
                     IconButton(onPressed: () {

                     }, icon: const Icon(Icons.search))
                   ],
                 ),
               ),
             ),
             Container(
               height: 60,
               width: FullWidth(context),
               child: Padding(
                 padding: const EdgeInsets.all(10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Our Products", style: ChivoMonoBold.copyWith(color: Colors.indigo, fontSize: 25),),
                     ),
                     DropdownButton( iconDisabledColor: Colors.green, hint: const Padding(
                       padding:  EdgeInsets.all(8.0),
                       child:  Text("Sort by"),
                     ),
                         icon: const Icon(Icons.keyboard_arrow_down, size: 30,),
                         style: const TextStyle(fontSize: 20, color: Colors.black), items: const [
                           DropdownMenuItem(
                               value: "Bishwojit",
                               child: Text("Bishwojit")),
                           DropdownMenuItem(
                               value: "Rakib",
                               child: Text("Rakib")),
                           DropdownMenuItem(
                               value: "Robin",
                               child: Text("Robin")),
                           DropdownMenuItem(
                               value: "Iftekhar",
                               child: Text("Iftekhar")),
                           DropdownMenuItem(
                               value: "Shimul",
                               child: Text("Shimul")),
                           DropdownMenuItem(
                               value: "Imteaj",
                               child: Text("Imteaj")),

                         ],
                         onChanged: (value){
                           setState(() {
                             Text(selected!);
                             selected=value;
                           });

                         }),
                   ],
                 ),
               ),
             ),
             Container(
               height:90,
               width: FullWidth(context),
               child: Padding(
                 padding: const EdgeInsets.all(10),
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             setState(() {
                               isChange=0;
                             });
                           },
                           child: Container(
                             height: 90,
                             width: 150,

                             decoration: BoxDecoration(
                                 color: isChange==0? Colors.white: Colors.grey.withOpacity(0.15),
                                 borderRadius: const BorderRadius.all(Radius.circular(20))
                             ),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 35,
                                   width: 35,
                                   child: const Image(image: AssetImage("assets/icon/running-shoe.png")),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Sneakers", style: LatoBold.copyWith
                                     (color: isChange==0? Colors.indigo: Colors.black, fontSize: 16),),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             setState(() {
                               isChange=1;
                             });
                           },
                           child: Container(
                             height: 90,
                             width: 150,

                             decoration: BoxDecoration(
                                 color: isChange==1? Colors.white: Colors.grey.withOpacity(0.15),
                                 borderRadius: const BorderRadius.all(Radius.circular(20))
                             ),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 35,
                                   width: 35,
                                   child: const Image(image: AssetImage("assets/icon/hand-watch.png")),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Watch", style: LatoBold.copyWith
                                     (color: isChange==1? Colors.indigo: Colors.black, fontSize: 16),),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             setState(() {
                               isChange=2;
                             });
                           },
                           child: Container(
                             height: 90,
                             width: 150,

                             decoration: BoxDecoration(
                                 color: isChange==2? Colors.white: Colors.grey.withOpacity(0.15),
                                 borderRadius: const BorderRadius.all(Radius.circular(20))
                             ),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 35,
                                   width: 35,
                                   child: const Image(image: AssetImage("assets/icon/backpack.png")),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Backpack", style: LatoBold.copyWith
                                     (color: isChange==2? Colors.indigo: Colors.black, fontSize: 16),),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             setState(() {
                               isChange=3;
                             });
                           },
                           child: Container(
                             height: 90,
                             width: 150,

                             decoration: BoxDecoration(
                                 color: isChange==3? Colors.white: Colors.grey.withOpacity(0.15),
                                 borderRadius: const BorderRadius.all(Radius.circular(20))
                             ),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 35,
                                   width: 35,
                                   child: const Image(image: AssetImage("assets/icon/shirt.png")),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("T-Shirts", style: LatoBold.copyWith
                                     (color: isChange==3? Colors.indigo: Colors.black, fontSize: 16),),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             setState(() {
                               isChange=4;
                             });
                           },
                           child: Container(
                             height: 90,
                             width: 150,

                             decoration: BoxDecoration(
                                 color: isChange==4? Colors.white: Colors.grey.withOpacity(0.15),
                                 borderRadius: const BorderRadius.all(Radius.circular(20))
                             ),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 35,
                                   width: 35,
                                   child: const Image(image: AssetImage("assets/icon/hoodie (1).png")),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Hoddies", style: LatoBold.copyWith
                                     (color: isChange==4? Colors.indigo: Colors.black, fontSize: 16),),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                           onTap: () {
                             setState(() {
                               isChange=5;
                             });
                           },
                           child: Container(
                             height: 90,
                             width: 150,

                             decoration: BoxDecoration(
                                 color: isChange==5? Colors.white: Colors.grey.withOpacity(0.15),
                                 borderRadius: const BorderRadius.all(Radius.circular(20))
                             ),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 35,
                                   width: 35,
                                   child: const Image(image: AssetImage("assets/icon/badminton.png")),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Racket", style: LatoBold.copyWith
                                     (color: isChange==5? Colors.indigo: Colors.black, fontSize: 16),),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             const SizedBox(height: 10,),
             Container(
               height: FullHeight(context),
               width: FullWidth(context)/1,
               child: GridView.count( crossAxisCount: 2,
                   crossAxisSpacing: 3,
                   mainAxisSpacing: 5,
                   scrollDirection: Axis.vertical,
                   children: List.generate(orderList.length, (index) {
                     return Padding(
                       padding: const EdgeInsets.only(left:10, right: 10),
                       child: Container(
                         decoration:  BoxDecoration(
                           color: Colors.white30,
                           border: Border.all(color: Colors.black, width: 1),
                           borderRadius: const BorderRadius.all(Radius.circular(15)),
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 InkWell(
                                   onTap: () {

                                   },
                                   child: Text(orderList[index].discount),),
                                 InkWell(
                                     onTap: () {

                                     },
                                     child: const Icon(Icons.favorite, color: Colors.pink,)),

                               ],
                             ),
                             Stack(
                               children: [
                                 Container(
                                   height: 130,
                                   width: 130,
                                   decoration:  BoxDecoration(
                                     color: Colors.cyan,
                                     borderRadius: const BorderRadius.all(
                                         Radius.circular(100) ),
                                     gradient: RadialGradient(colors: [
                                       Colors.cyan.withOpacity(0.6),
                                       Colors.white,Colors.cyan.withOpacity(0.6)
                                     ],
                                     ),
                                     ),
                                 ),

                                 Padding(
                                   padding: const EdgeInsets.only(left: 10, top: 10),
                                   child: Container(
                                     height:110,
                                     width: 110,
                                     child: ClipRRect(
                                       borderRadius: const BorderRadius.all(Radius.circular(100)),
                                       child: Image(image: NetworkImage(orderList[index].images.toString()
                                       ), fit: BoxFit.cover,),
                                     ),
                                   ),
                                 ),

                               ],
                             ),
                             Expanded(
                               child: Column(
                                 children: [
                                   Text(orderList[index].name.toString()),
                                   Text(orderList[index].price.toString()),
                                 ],
                               ),
                             )

                           ],
                         ),
                       ),
                     );
                   })
               ),
             )
            ],
          ),
    )
    );
  }
}
