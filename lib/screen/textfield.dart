import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/utils/customiazationFont.dart';

class TextFieldNew extends StatefulWidget {
  const TextFieldNew({Key? key}) : super(key: key);

  @override
  State<TextFieldNew> createState() => _TextFieldNewState();
}

class _TextFieldNewState extends State<TextFieldNew> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            children:  [
              const SizedBox(height: 50,),

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Bishwojit chandra das", style: LatoBlack,),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Bishwojit chandra das", style: LatoBold.copyWith( fontSize: 25
                , color: Colors.blue),),
              ), const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Bishwojit chandra das", style: LatoRegular, ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Bishwojit chandra das", style: LatoLight),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Bishwojit chandra das", style: LatoThin),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Bishwojit chandra das", style: LatoThin),
              ),

            ],

          ),
        ));
  }
}
