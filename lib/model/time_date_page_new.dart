import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:link_up_pages/model/customDrawer.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class TimeDateNew extends StatefulWidget {
  const TimeDateNew({Key? key}) : super(key: key);

  @override
  State<TimeDateNew> createState() => _TimeDateNewState();
}

class _TimeDateNewState extends State<TimeDateNew> {

  String date="Select Date";
  TimeOfDay selectedTime= TimeOfDay.now();

  String? fileName="";
  File? file;
  final picker=ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              TextButton(onPressed: () async {
                DateTime? dateTime= await getDate(context);
                String? day;
                String? month;
                String? year;
                dateTime!.day<10? day='0${dateTime.day}': day='${dateTime.day}';
                dateTime!.month<10? day='0${dateTime.month}': month='${dateTime.month}';
                year='${dateTime.year}';
                date='$day-$month-$year';
                setState(() {

                });

              }, child: Text(date)),


              TextButton(onPressed: () async {
                _selectTime(context);
              }, child: Text("${selectedTime.hour}:${selectedTime.minute}"),

              ),


              InkWell(
                onTap: () {
                  _chooseCamera();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green, border: Border.all(color: Colors.black, width: 2)
                  ),
                  child: const Center(
                    child: Text("Take from camera", style: TextStyle(color: Colors.white, fontSize: 20,
                    fontWeight: FontWeight.bold, ),),
                  ),
                ),
              ),

             const SizedBox(height: 20,),

              InkWell(
                onTap: () {
                  _chooseGalary();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green, border: Border.all(color: Colors.black, width: 2)
                  ),
                  child: const Center(
                    child: Text("Choose from galary", style: TextStyle(color: Colors.white, fontSize: 20,
                      fontWeight: FontWeight.bold, ),),
                  ),
                ),
              )




            ],
          ),
        )
    );
  }



 _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial
    );
    if(timeOfDay!=null && timeOfDay!=selectedTime){
      setState(() {
        selectedTime=timeOfDay;
      });
    }
 }

  Future<void> _chooseCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera, imageQuality: 50,
    maxWidth: 500, maxHeight: 500);
    setState(() {
      if(pickedFile!=null){
        file=File(pickedFile.path);
      }else{
        "No Image Selected";
      }
    });
  }

  Future<void> _chooseGalary() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50,
        maxWidth: 500, maxHeight: 500);
    setState(() {
      if(pickedFile!=null){
        file=File(pickedFile.path);
      }else{
        "No Image Selected";
      }
    });
  }


}

Future<DateTime?> getDate(BuildContext context) {
  return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    builder: (BuildContext context, Widget? child) {
      return Theme(data: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blueAccent,
        ),
        dialogBackgroundColor: Colors.white
      ), child: child!,
      );
    },
  );

}
