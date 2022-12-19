
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:link_up_pages/screen/forget_password.dart';
import 'package:link_up_pages/screen/sign_up_page.dart';

class Login_Account extends StatefulWidget {
  const Login_Account({Key? key}) : super(key: key);

  @override
  State<Login_Account> createState() => _Login_AccountState();
}

class _Login_AccountState extends State<Login_Account> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();


late String _userEmail= _emailController.text.isEmpty?"":_emailController.text;
late String _userPassword=_passController.text.isEmpty?"":_passController.text ;

  bool isVisible=true;
  bool isCheck =false;
  String savePassword="";
  _errorText() {
    if (_passController.text.length < 8) {
      print("Password Must be 8 Character");
    }
  }




  @override
  Widget build(BuildContext context) {




    return SafeArea(
      
      
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Scaffold(
            appBar: AppBar(title: Text("Welcome"),),
            backgroundColor: Colors.white.withOpacity(0.9),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [


                  const SizedBox(height: 20,),
                  const Text("Login Account", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold
                  , ),textAlign: TextAlign.center,),
                  SizedBox(height: 50,),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))],
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Email Address",
                        suffixIcon: IconButton(onPressed: () {

                        }, icon: const Icon(Icons.mail, color: Colors.blueAccent, size: 20),),
                        labelStyle: const TextStyle(color: Colors.indigo, fontSize: 18),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
                          color: Colors.green, width: 2
                        )),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          borderSide: BorderSide(
                            color: Colors.indigo, width: 2
                          )
                        ),

                  )
                  ) ,

                  const SizedBox(height: 20,),
                  TextField(
                      keyboardType: TextInputType.text,
                      controller: _passController,
                      obscureText: isVisible? true:false,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[a-z A-Z 0-9 @ . #]'))
                      ],
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: "Password",
                        suffixIcon: IconButton(onPressed: () {

                          setState(() {
                            isVisible=!isVisible;
                          });

                        }, icon:  Icon(isVisible? Icons.visibility_off: Icons.visibility,
                          color: Colors.blueAccent, size: 20,),),
                        labelStyle: const TextStyle(color: Colors.indigo, fontSize: 18),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(
                            color: Colors.green, width: 2
                        )),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            borderSide: BorderSide(
                                color: Colors.indigo, width: 2
                            )
                        ),

                      )
                  ),


                SizedBox(height: 10,),

                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue[900],
                        value:isCheck,
                        onChanged: (value) {
                    setState(() {
                      isCheck=value!;
                      savePassword=value? _passController.text:"";
                    });
                    }),
                    const Text("Save Password"),
                     Expanded(child: Container()),

                     TextButton(onPressed: () {

                       setState(() {

                         _emailController.clear();
                         _passController.clear();
                       });
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Forget_Password(),));

                     }, child: const Text("Forget Password?", style: TextStyle(color: Colors.black),),)
                  ],
                ),


                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
                    child: InkWell(onTap: () {
                      String _email=_emailController.text;
                      String _password=_passController.text;
                       print(_email);
                      print(_password);
                      setState(() {
                        _userEmail=_emailController.text;
                        _userPassword=_passController.text;
                      });
                      _emailController.clear();
                      _passController.clear();
                    },


                        child:Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: MediaQuery.of(context).size.width/1.3,
                      decoration:   const BoxDecoration(color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                        child:   const Text("Login Account", style: TextStyle(color:Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),

                    )),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't you have an account?", style: TextStyle(
                        fontSize: 18,
                      ),),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_Page(),));
                      }, child: const Text("Sign Up", style: TextStyle(color: Colors.black, fontSize: 18),),)
                    ],
                  ),

                  const SizedBox(height: 30,),

                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width/1.6,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent, borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black, width: 2)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            children: [
                              const Text("Email : ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22, color: Colors.white),),
                              Text("$_userEmail", style: const TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            children: [
                              const Text("Password : ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22, color: Colors.white),),
                              Text("$_userPassword", style: const TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            children: [
                              const Text("Save Password : ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22, color: Colors.white),),
                              Text("$savePassword", style: const TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.w600),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )


                ],

              ),
            ),

    ),
        ));
  }
}

