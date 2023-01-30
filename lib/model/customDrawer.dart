import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(.5)
            ),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: const BorderRadius.all(
                            Radius.circular(100)),
                        border: Border.all(color: Colors.white, width: 2)
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(100)),
                      child: Image.asset(
                        "assets/images/bish_cls_party_1.jpg",
                        fit: BoxFit.cover,),

                    ),

                  ),
                  const SizedBox(height: 5,),
                  const Text("Bishwojit Chandra Das", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  const Text("Software Developer", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                ],
              ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                  leading: Icon(Icons.drafts, color: Colors.white,),
                  title:  Text(
                    "Inbox", style: TextStyle(color: Colors.white),),
                  trailing:  Text(
                    "25", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                  leading: Icon(Icons.star, color: Colors.white,),
                  title: Text("Starred", style: TextStyle(color: Colors
                      .white),),
                  trailing: Text("2", style: TextStyle(color: Colors
                      .white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.snooze, color: Colors.white,),
                  title: Text(
                    "Snoozed", style: TextStyle(color: Colors.white),),

                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                  leading: Icon(
                    Icons.send, color: Colors.white,),
                  title: Text(
                    "Sent", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                  leading: Icon(Icons.drafts, color: Colors.white,),
                  title:  Text(
                    "Drafts", style: TextStyle(color: Colors.white),),
                  trailing:  Text(
                    "5", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                  leading: Icon(Icons.label_important_rounded, color: Colors.white,),
                  title: Text("Important", style: TextStyle(color: Colors
                      .white),),
                  trailing: Text("2", style: TextStyle(color: Colors
                      .white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.schedule_send, color: Colors.white,),
                  title: Text(
                    "Schedule", style: TextStyle(color: Colors.white),),

                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                  leading: Icon(Icons.mail_lock_outlined, color: Colors.white,),
                  title:  Text(
                    "All Mails", style: TextStyle(color: Colors.white),),
                  trailing:  Text(
                    "99+", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))
                ),
                child:const ListTile(
                    leading: Icon(Icons.error, color: Colors.white,),
                    title: Text("Spam", style: TextStyle(color: Colors
                        .white),)
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
