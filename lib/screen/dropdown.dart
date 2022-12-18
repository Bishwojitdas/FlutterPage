import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
  }

  class _DropDownButtonState extends State<DropDownButton> {

  String? selected = "Choose";

  bool isSwitch=false;

  Object? _gender="";





  @override
  Widget build(BuildContext context) {







  return Scaffold(
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
                    Text(selected!, style: const TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.bold),),

                    DropdownButton( iconDisabledColor: Colors.green, hint: Text("Select"), icon: Icon(Icons.arrow_downward_outlined, color: Colors.red, size: 30,), style: TextStyle(fontSize: 20, color: Colors.indigo), items: const [
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
                        selected=value;
                      });
                        }),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Off"),
              Switch(
                  value: isSwitch,
                  onChanged: (bool value){
                setState(() {
                  isSwitch=!isSwitch;
                });
                  }),
              Text("On"),
            ],
          ),
    
    SizedBox(height: 30,),
    
          Row(
            children: [

              Radio(value: 0,
                  groupValue: _gender,
                  onChanged: (value)
                  {
                    setState(() {
                      _gender=value;
                    });

                  }),
              Text("Male"),

              Radio(value: 1,
                  groupValue: _gender,
                  onChanged: (value)
                  {
                    setState(() {
                      _gender=value;
                    });

                  }),
              Text("Female"),

              Radio(value: 2,
                  groupValue: _gender,
                  onChanged: (value)
                  {
                    setState(() {
                      _gender=value;
                    });
                  }),
              Text("Others")
            ],
          )


  ]
  ),
  ),
  );
  }
  }