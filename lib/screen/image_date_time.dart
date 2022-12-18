
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageDateTime extends StatefulWidget {
  const ImageDateTime({Key? key}) : super(key: key);

  @override
  State<ImageDateTime> createState() => _ImageDateTimeState();
}

class _ImageDateTimeState extends State<ImageDateTime> {

  String date="Select Date";
  TimeOfDay selectedTime=TimeOfDay.now();

  String fileName="";
  File? file;
  final picker = ImagePicker();


  void _chooseCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }



  void _chooseGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }








  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("Form"),),
          body: ListView(

            children: [
              const SizedBox(height: 100,),

              TextButton(onPressed: () async {

                DateTime? dateTime= await getDate(context);
                String? day;
                String? month;
                String? year;
                dateTime!.day<10? day='0${dateTime.day}': day='${dateTime.day}';
                dateTime.month<10? month='0${dateTime.month}':month='${dateTime.month}';
                year='${dateTime.year}';
                date='$day-$month-$year';
                setState(() {

                });
              }, child: Center(child: Text(date)),),

              const SizedBox(height: 20,),

              InkWell(
                onTap: () async {
                  setState(() {
                    _selectTime(context);
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Center(child: Text("${selectedTime.hour}:${selectedTime.minute}")),
                ),
              ),

              const  SizedBox(height: 50,),
              InkWell(
                onTap: () async {
                  _chooseCamera();
                },
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration:const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Center(child: Text("Image from camera" )),
                ),
              ),


              const SizedBox(height: 20,),
              InkWell(
                onTap: () async {
                  _chooseGallery();
                },
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Center(child: Text("Image From Gallery")),
                ),
              ),
              const SizedBox(height: 20,),
              file!=null ? Image.file(file! , height: 300, width: double.infinity, fit: BoxFit.cover,) : Container(),







          ElevatedButton(onPressed: () {

          }, child:const Text("Bishwojit"))
            ],
          ),
        ));
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }






Future<DateTime?> getDate(BuildContext context) async {
return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2040),
  builder:(BuildContext context, Widget? child) {
      return Theme(data: ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Colors.blueAccent),
        dialogBackgroundColor: Colors.white,
      ),
          child: child!, );
  },
);
}}
