import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Forget_Password(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class Forget_Password extends StatefulWidget {
  @override
  _Forget_PasswordState createState() => _Forget_PasswordState();
}

class _Forget_PasswordState extends State<Forget_Password> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }


  bool isVisible=true;
  bool isVisible_2=true;

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passController=TextEditingController();
  TextEditingController _coPassController=TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text(
                "Reset Password",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              //styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
              //box styling
              const SizedBox(
                height: 10,
              ),
              //text input
              TextFormField(
                obscureText: isVisible?true:false,
                decoration:  InputDecoration(labelText: 'Enter a new Password',
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    isVisible=!isVisible;
                  });
                }, icon: Icon(isVisible? Icons.visibility_off: Icons.visibility))
                ),
                keyboardType: TextInputType.text,
                onFieldSubmitted: (value) {},

                controller: _passController,

                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is empty!';
                  }
                  else if (value.length<4) {
                    return 'password is too short!';
                  }
                  else if (value.length<8) {
                    return 'password must be 8 characters!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 10,
              ),
              //text input
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirm Password',
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      isVisible_2=!isVisible_2;
                    });
                  }, icon: Icon(isVisible_2? Icons.visibility_off:Icons.visibility))
                ),
                keyboardType: TextInputType.text,
                onFieldSubmitted: (value) {},
                obscureText: isVisible_2?true:false,
                controller: _coPassController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Empty password!';
                  }
                  else if (value.length<4) {
                    return 'password is too short!';
                  }
                  else if (value.length<8) {
                    return 'password must be 8 characters!';
                  }
                  else if (value!=_passController.text) {
                    return 'password not matched!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton(
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: () => _submit(),

              )
            ],
          ),
        ),
      ),
    );
  }
}