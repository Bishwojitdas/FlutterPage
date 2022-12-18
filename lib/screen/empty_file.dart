import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/call_app.dart';
import 'package:link_up_pages/screen/image_date_time.dart';
import 'package:link_up_pages/screen/login_account.dart';
import 'package:link_up_pages/screen/listview_builder.dart';
import 'package:link_up_pages/screen/model/time_date_page_new.dart';
import 'package:link_up_pages/screen/sign_up_page.dart';

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Account()));
                        }, child: const Text("Login_Account", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),


                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_Page()));
                        }, child: const Text("Sign Up Page", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Forget_Password()));
                        }, child: const Text("Forget Password", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DropDownButton()));
                        }, child: const Text("Dropdown", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CallApp()));
                        }, child: const Text("Call App", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ImageDateTime()));
                        }, child: const Text("Select Date", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TimeDateNew()));
                        }, child: const Text("Time Date", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),


                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TimeDateNew()));
                        }, child: const Text(" Date", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TimeDateNew()));
                        }, child: const Text(" Time", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),

                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TimeDateNew()));
                        }, child: const Text(" dgvfdgbfg", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                        ),




                      ],
                    ),
                  ),
        ));
  }
}
