import 'package:flutter/material.dart';
import 'package:link_up_pages/model/contact_model.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class ListView_Demo extends StatefulWidget {
   ListView_Demo({Key? key}) : super(key: key);

  @override
  State<ListView_Demo> createState() => _ListView_DemoState();


}

class _ListView_DemoState extends State<ListView_Demo> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("This is List View"),
        ),
         backgroundColor: Colors.white.withOpacity(0.85),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: contactList.length,
            itemBuilder: ((context, index) {
              return ListTile(
              leading: const Icon(Icons.person, color: Colors.blue, size: 30,),
              title: Text(contactList[index].name.toString(), style: const TextStyle(color: Colors.black, fontSize: 20
              , fontWeight: FontWeight.w400),),
                subtitle: Text(contactList[index].phone.toString(), style: const TextStyle(color: Colors.black, fontSize: 15
                    , fontWeight: FontWeight.w200),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {
                      _makePhoneCall(contactList[index].phone.toString());
                    }, icon: const Icon(Icons.call, size: 30, color: Colors.green,)),
                    IconButton(onPressed: () {
                      _makeSms(contactList[index].phone.toString());
                    }, icon: const Icon(Icons.message_outlined, size: 30, color: Colors.blue,)),
                  ],
                )
              );
            })

      ),)
    );
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