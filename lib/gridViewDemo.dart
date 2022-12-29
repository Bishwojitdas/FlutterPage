import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/model/contact_model.dart';
import 'package:link_up_pages/screen/utils/customiazationFont.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
        child: Scaffold(
          body: Container(
            color:Colors.black,
            height: FullHeight(context),
            width: FullWidth(context),
            child: GridView.count( crossAxisCount: 3,
              children: List.generate(contactList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(15)),

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           InkWell(
                               onTap: () {

                               },
                               child: const Icon(Icons.person, color: Colors.deepOrange,)),

                           InkWell(
                               onTap: () {
                                 _makePhoneCall(contactList[index].phone.toString());
                               },
                               child: const Icon(Icons.call, color: Colors.green,)),
                           InkWell(
                               onTap: () {
                                 _makeSms(contactList[index].phone.toString());
                               },
                               child: const Icon(Icons.message, color: Colors.blue,)),

                         ],
                       ),
                        Text(contactList[index].name, style: ChivoMonoBold.copyWith(color: Colors.indigo,)),
                        Text(contactList[index].phone, style: ChivoMonoBold,),
                      ],
                    ),
                  ),
                );
              })
            ),
          ),
        ));
  }
}


Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: "+88${phoneNumber}",
  );
  await UrlLauncher.launchUrl(launchUri);
}


Future<void> _makeSms(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'sms',
    path: "+88${phoneNumber}",
  );
  await UrlLauncher.launchUrl(launchUri);
}
