import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/homePage.dart';
import 'package:link_up_pages/screen/image_date_time.dart';
import 'package:link_up_pages/screen/listview_builder.dart';
import 'package:link_up_pages/screen/model/customBottomNav.dart';
import 'package:link_up_pages/screen/model/customDrawer.dart';
import 'package:link_up_pages/screen/profile_page.dart';
import 'package:link_up_pages/screen/sign_up_page.dart';

class DrawerAndBottomNav extends StatefulWidget {
  const DrawerAndBottomNav({Key? key}) : super(key: key);

  @override
  _DrawerAndBottomNavState createState() => _DrawerAndBottomNavState();
}

class _DrawerAndBottomNavState extends State<DrawerAndBottomNav> {


  late PageController _pageController;
  int _pageIndex = 1;
  late List<Widget> _screenList;
 var _scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 1);
    _screenList=[
      ListView_Demo(),
      const HomePage(),
      const SignUp_Page(),
      const ImageDateTime(),

    ];
  }

  _setPage(int index){
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if(_pageIndex!=1){

          _setPage(1);
          return false;
        }else{
          return true;
        }
      },
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            leading:
            InkWell(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2)
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icon/drawer_color.png",
                          fit: BoxFit.cover,),

                      ),

                    ),
                  ),
                ],
              ),
            ),

            backgroundColor: Colors.white,
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 40,
                      width: 40,
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
                  ),
                ],
              )
            ],
          ),

          drawer:const CustomDrawer (),
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
            ),
            child: Row(
              children: [
                BottomNavItem(icon: Icons.call, isSelect: _pageIndex==0, onTap:()=> _setPage(0)),
                BottomNavItem(icon: Icons.home, isSelect: _pageIndex==1, onTap:()=> _setPage(1)),
                BottomNavItem(icon: Icons.login, isSelect: _pageIndex==2, onTap:()=> _setPage(2)),
                BottomNavItem(icon: Icons.date_range_rounded, isSelect: _pageIndex==3, onTap:()=> _setPage(3)),

              ],
            ),
          ),
          body: PageView.builder(
              controller: _pageController,
              itemCount: _screenList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return _screenList[index];
              }),

        ),
      ),
    );
  }
}
