import 'package:flutter/material.dart';

class ChadalDropdown extends StatefulWidget {
  const ChadalDropdown({Key? key}) : super(key: key);

  @override
  State<ChadalDropdown> createState() => _ChadalDropdownState();
}

class _ChadalDropdownState extends State<ChadalDropdown> {
  String? selected = "Choose";

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: ListView(
        children: [
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
        ],
      ),
    ));
  }
}
