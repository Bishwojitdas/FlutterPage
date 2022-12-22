import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/homePage.dart';
import 'package:link_up_pages/screen/image_date_time.dart';
import 'package:link_up_pages/screen/listview_builder.dart';
import 'package:link_up_pages/screen/sign_up_page.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>with TickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync: this);
    _tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: const Text("TapBar"),
                bottom: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(icon: Icon(Icons.list_alt),child: Text("ListView"),),
                      Tab(icon: Icon(Icons.home),child: Text("HomePage"),),
                      Tab(icon: Icon(Icons.login),child: Text("SignUp"),),
                      Tab(icon: Icon(Icons.image),child: Text("ImageDate"),)
                    ]
    ),
              ),
              body: TabBarView(
                  controller: _tabController,
                  physics: ScrollPhysics(),
                  children: [
                    ListView_Demo(),
                    const HomePage(),
                    const SignUp_Page(),
                    const ImageDateTime(),
                  ]),
            )
        )
          ),

    );
  }
}
