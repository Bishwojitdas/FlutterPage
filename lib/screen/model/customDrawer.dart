import 'package:flutter/material.dart';

import '../utils/customiazationFont.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration:const BoxDecoration(
              color: Colors.green
            ),
              child: Text("Navigation Drawer", style: LatoBold.copyWith(color: Colors.white, fontSize: 20),),
          ),

          ListTile(
                  leading: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.call,),
                  ),
                  title: Text("Bishwojit Chandra Das"),
                  subtitle: Text("Software Developer"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
          ListTile(
                  leading: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.alarm,),
                  ),
                  title: Text("MD NI Rakib"),
                  subtitle: Text("Software Developer"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
          ListTile(
                  leading: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.person,),
                  ),
                  title: Text("JH Shimul"),
                  subtitle: Text("Software Developer"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
          ListTile(
                  leading: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.camera_alt,),
                  ),
                  title: Text("Imteaj Mahie"),
                  subtitle: Text("Software Developer"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                ),
          ListTile(
                  leading: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.message,),
                  ),
                  title: Text("SFU Robin"),
                  subtitle: Text("Software Developer"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
        ],
      ),
    );
  }
}
