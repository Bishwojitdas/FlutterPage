import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/contact_save_page.dart';
import 'package:link_up_pages/model/contact_model.dart';

class CallApp extends StatefulWidget {
  const CallApp({Key? key}) : super(key: key);

  @override
  State<CallApp> createState() => _CallAppState();
}

class _CallAppState extends State<CallApp> {

  var _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(

          backgroundColor: Colors.black,
          body: ListView(
            children: [
              const SizedBox(height: 120),

              //Phone, contacts:-
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Phone", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w400),),
                  const SizedBox(height: 5,),
                  Text("${contactList.length} contacts with phone numbers",
                    style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300,),)
                ],
              ),

              const SizedBox(height: 100,),

              //save, search, more:-
              Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ContactSavePage(),));
                    });
                  }, icon: const Icon(Icons.add, size: 20, color: Colors.white,)),
                  IconButton(onPressed: () {

                  }, icon: const Icon(Icons.search, size: 20, color: Colors.white,)),

                  IconButton(onPressed: () {

                  }, icon: const Icon(Icons.more_vert, size: 20, color: Colors.white)),
                ],
              ),


              const SizedBox(height: 70,),

              Container(
                height: 200,
                width: MediaQuery.of(context).size.width/1.3,
                child: Column(
                  children: [
                    TextButton(onPressed: () {
                      setState(() {

                        if(_formKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CallApp( ),));
                        }
                      });
                    }, child: Container())
                  ],
                ),
              )
            ],
            
          ),
        ));
  }
}
