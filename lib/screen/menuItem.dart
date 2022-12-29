import 'package:flutter/material.dart';
import 'package:link_up_pages/drawer_Navigation.dart';
import 'package:link_up_pages/gridViewDemo.dart';
import 'package:link_up_pages/homework/creativeIt/creativeResponsive.dart';
import 'package:link_up_pages/homework/shop/onlineProduct.dart';
import 'package:link_up_pages/screen/call_app.dart';
import 'package:link_up_pages/screen/drawerAndBottomNavigation.dart';
import 'package:link_up_pages/screen/image_date_time.dart';
import 'package:link_up_pages/screen/login_account.dart';
import 'package:link_up_pages/screen/listview_builder.dart';
import 'package:link_up_pages/screen/model/responsiveDesign.dart';
import 'package:link_up_pages/screen/model/tabBarDemo.dart';
import 'package:link_up_pages/screen/model/time_date_page_new.dart';
import 'package:link_up_pages/screen/sign_up_page.dart';
import 'package:link_up_pages/screen/textfield.dart';

import 'dropdown.dart';
import 'forget_password.dart';

class Empty_Page extends StatefulWidget {
  const Empty_Page({Key? key}) : super(key: key);

  @override
  State<Empty_Page> createState() => _Empty_PageState();
}

class _Empty_PageState extends State<Empty_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(),
                  drawer: const MyDrawer(),
                  body: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ListView_Demo()));
                        }, child: const Text("ListView", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),


                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Account()));
                        }, child: const Text("Login_Account", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),


                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp_Page()));
                        }, child: const Text("Sign Up Page", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Forget_Password()));
                        }, child: const Text("Forget Password", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DropDownButton()));
                        }, child: const Text("Dropdown", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const CallApp()));
                        }, child: const Text("Call App", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageDateTime()));
                        }, child: const Text("Select Date", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const TimeDateNew()));
                        }, child: const Text("Time Date", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),


                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const TextFieldNew()));
                        }, child: const Text("Custom Font", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerAndBottomNav()));
                        }, child: const Text("Drawer And Bottom", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyDrawer()));
                        }, child: const Text("Drawer", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerAndBottomNav()));
                        }, child: const Text("Homework", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const GridViewDemo()));
                        }, child: const Text("GridView", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const TabBarDemo()));
                        }, child: const Text("TabBar", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ResponsiveDesign()));
                        }, child: const Text("Responsive Design", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnlineShop()));
                        }, child: const Text("Shop", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const CreativeResponsive()));
                        }, child: const Text("Creative it", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),
                      ],
                    ),
                  ),
        ));
  }
}
