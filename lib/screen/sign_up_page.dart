import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_account.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({Key? key}) : super(key: key);

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _coPassController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  bool isVisible=true;
  bool isVisible_2=true;
  bool isCheck=false;
  String savePassword="";

  var _formKey=GlobalKey<FormState >();

  void _submit(){
    if(_formKey.currentState!.validate()){
      return;
    }
    _formKey.currentState!.save();
  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(


          backgroundColor: Colors.white.withOpacity(0.9),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(height: 20,),
                const Text("Create Account", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold
                  , ),textAlign: TextAlign.center,),
                SizedBox(height: 50,),


              Form(
                  key: _formKey,
                  child: Column(
                children: [

                  //Full Name:-
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "    Full Name", labelStyle: const TextStyle(fontSize: 18, color: Colors.indigo, fontWeight: FontWeight.w300),
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo, width: 2),
                          borderRadius:BorderRadius.all(Radius.circular(100))),
                      focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: CupertinoColors.activeGreen, width: 2),
                          borderRadius:BorderRadius.all(Radius.circular(100))),
                     suffixIcon: IconButton(onPressed: () {

                     }, icon: const Icon(Icons.person, size: 30, color: Colors.indigo,)),
                    ),
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    inputFormatters:[
                      FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                    ],
                    validator: (value) {
                      if(value!.isEmpty ||
                          value==null )
                      {
                        return "Enter a valid Name";
                      }
                      return null;
                    },

                  ),

                  const SizedBox(height: 25,),

                  //E-mail:
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "    Email Address", labelStyle: const TextStyle(fontSize: 18, color: Colors.indigo, fontWeight: FontWeight.w300),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100)) ),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: CupertinoColors.activeGreen, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100))),
                        suffixIcon: IconButton(onPressed: () {

                        }, icon: const Icon(Icons.mail, size: 30, color: Colors.indigo,)),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
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

                  const SizedBox(height: 25,),

                  //Phone Number:
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "    Phone Number", labelStyle: const TextStyle(fontSize: 18, color: Colors.indigo, fontWeight: FontWeight.w300),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100)) ),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: CupertinoColors.activeGreen, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100))),
                        suffixIcon: IconButton(onPressed: () {

                        }, icon: const Icon(Icons.phone, size: 30, color: Colors.indigo,)),
                      ),
                      keyboardType: TextInputType.number,
                      controller: _phoneController,
                      inputFormatters:[
                        FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                      ],
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter your phone number";
                        }
                        else if(value.length<11)
                        {
                          return "Invalid phone number";
                        }
                        return null;
                      }
                  ),


                  const SizedBox(height: 25,),

                  //Password:
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "    Password", labelStyle: const TextStyle(fontSize: 18, color: Colors.indigo, fontWeight: FontWeight.w300),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100)) ),
                        errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100))),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: CupertinoColors.activeGreen, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100))),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisible=!isVisible;
                          });
                        }, icon:  Icon(isVisible? Icons.visibility_off: Icons.visibility, size: 30, color: Colors.indigo,)),
                      ),
                      keyboardType: TextInputType.text,
                      controller: _passController,
                      obscureText: isVisible?true:false,
                      inputFormatters:[
                        FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                      ],
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter your password";
                        }
                        else if(value!.length<4){
                          return"Password is too short";
                        }
                        else if(value!.length<8){
                          return"Password must be 8 characters";
                        }

                        return null;
                      }
                  ),

                  const SizedBox(height: 25,),

                  //Confirm Password:
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "    Confirm Password", labelStyle: const TextStyle(fontSize: 18, color: Colors.indigo, fontWeight: FontWeight.w300),
                        floatingLabelBehavior: FloatingLabelBehavior.always,

                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100)) ),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: CupertinoColors.activeGreen, width: 2),
                            borderRadius:BorderRadius.all(Radius.circular(100))),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisible_2=!isVisible_2;
                          });
                        }, icon:  Icon(isVisible_2? Icons.visibility_off: Icons.visibility, size: 30, color: Colors.indigo,)),
                      ),
                      keyboardType: TextInputType.text,
                      controller: _coPassController,
                      obscureText: isVisible_2?true:false,
                      inputFormatters:[
                        FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                      ],
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Confirm your password";
                        }
                        else if(value!=_passController.text ){
                          return"Password not matched";
                        }
                        return null;
                      }
                  ),

                ],
              )
              )
              ,


                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue[900],
                        value:isCheck,
                        onChanged: (value) {
                          setState(() {
                            isCheck=value!;
                          });
                        }),
                    const Text("Agree with"),
                    TextButton(onPressed: () {

                    }, child: const Text("Terms and condition?", style: TextStyle(color: Colors.black),),)
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
                  child: InkWell(

                      onTap: () {

                    setState(() {
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Account(),));
                      }
                      _nameController.clear();
                      _emailController.clear();
                      _phoneController.clear();
                      _passController.clear();
                      _coPassController.clear();
                      });

                    },


                      child:Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: MediaQuery.of(context).size.width/1.3,
                        decoration:   const BoxDecoration(color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(100))),
                        child:   const Text("Create Account", style: TextStyle(color:Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),

                      )),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?", style: TextStyle(
                      fontSize: 18,
                    ),),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Account(),));
                    }, child: const Text("Login", style: TextStyle(color: Colors.black, fontSize: 18),),)
                  ],
                ),






              ],

            ),
          ),

        ));
  }
}
