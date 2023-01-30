import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:link_up_pages/screen/call_app.dart';

class ContactSavePage extends StatefulWidget {
  const ContactSavePage({Key? key}) : super(key: key);

  @override
  State<ContactSavePage> createState() => _ContactSavePageState();
}

class _ContactSavePageState extends State<ContactSavePage> {

  var _formKey=GlobalKey<FormState>();

   TextEditingController _nameController=TextEditingController();
  TextEditingController _phoneController=TextEditingController();
  TextEditingController _emailController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: ListView(
            children: [
              const SizedBox(height: 100,),
              Form(
                key:_formKey,

                  child: Column(
                    children: [
                      const SizedBox(height: 100,),

                      //Name:-
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                          decoration:  InputDecoration(
                            hintText: " Name", hintStyle: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300),
                        focusColor: Colors.white,
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(
                              color: Colors.white, width: 2,
                            ),borderRadius: BorderRadius.all(Radius.circular(100))),
                              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
                                  color: Colors.white, width: 2
                              ),borderRadius: BorderRadius.all(Radius.circular(100))),
                            prefixIcon:  IconButton(onPressed: () {

                            }, icon: const Icon(Icons.person_outline_rounded,color: Colors.white,))
                          ),
                          keyboardType: TextInputType.text,
                          controller: _nameController,
                          maxLength: 110,

                          validator: (value) {
                            if(value!.isEmpty)
                            {
                              return "Name can't be empty";
                            }
                            return null;
                          },
                        ),
                      ),

                      //phone:-
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                          decoration:  InputDecoration(
                              hintText: " Phone", hintStyle: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300),
                              focusColor: Colors.white,
                              enabledBorder: const OutlineInputBorder(borderSide: BorderSide(
                                color: Colors.white, width: 2,
                              ),borderRadius: BorderRadius.all(Radius.circular(100))),
                              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
                                  color: Colors.white, width: 2
                              ),borderRadius: BorderRadius.all(Radius.circular(100))),
                              prefixIcon:  IconButton(onPressed: () {

                              }, icon: const Icon(Icons.call,color: Colors.white,))
                          ),
                          keyboardType: TextInputType.number,
                          controller: _phoneController,
                          maxLength: 20,
                          inputFormatters:[
                            FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                          ],
                          validator: (value) {
                            if(value!.isEmpty)
                            {
                              return "phone can't be empty";
                            }
                            else if(value.length<11 || value.length>11)
                            {
                              return "enter a valid phone number";
                            }
                            return null;
                          },
                        ),
                      ),

                      //Email:-
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                          decoration:  InputDecoration(
                              hintText: " E-mail", hintStyle: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w300),
                              focusColor: Colors.white,
                              enabledBorder: const OutlineInputBorder(borderSide: BorderSide(
                                color: Colors.white, width: 2,
                              ),borderRadius: BorderRadius.all(Radius.circular(100))),
                              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
                                  color: Colors.white, width: 2
                              ),borderRadius: BorderRadius.all(Radius.circular(100))),
                              prefixIcon:  IconButton(onPressed: () {

                              }, icon: const Icon(Icons.mail_outline,color: Colors.white,))
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          maxLength: 20,
                          inputFormatters:[
                            FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                          ],
                            validator: (value) {
                              if(value!.isEmpty ||
                                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value))
                              {
                                return "Enter a valid email";
                              }
                              return null;
                            }
                        ),
                      ),


                    ],
                  )
              ),

              const SizedBox(height: 200,),

              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {
                    setState(() {
                      _phoneController.clear();
                      _emailController.clear();
                      _nameController.clear();
                    });
                  }, child: const Text("Cancel", style: TextStyle(color:Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                  ),
                  TextButton(onPressed: () {
                      setState(() {
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CallApp(),));
                      }
                    });
                  }, child: const Text("Save", style: TextStyle(color:Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                  ),
                ],
              )

            ],
          ),
        ));
  }
}
