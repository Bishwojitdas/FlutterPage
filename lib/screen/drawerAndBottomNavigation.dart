import 'package:flutter/material.dart';
import 'package:link_up_pages/screen/image_date_time.dart';
import 'package:link_up_pages/screen/listview_builder.dart';
import 'package:link_up_pages/screen/login_account.dart';
import 'package:link_up_pages/screen/model/customBottomNav.dart';
import 'package:link_up_pages/screen/model/customDrawer.dart';
import 'package:link_up_pages/screen/profile_page.dart';

class DrawerAndBottomNavigation extends StatefulWidget {
  const DrawerAndBottomNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerAndBottomNavigation> createState() => _DrawerAndBottomNavigationState();
}

class _DrawerAndBottomNavigationState extends State<DrawerAndBottomNavigation> {

  late String title="Drawer & Bottom Navigation";
  late  PageController _pageController;
  int _pageIndex=1;
  late List<Widget> _screenList;
  GlobalKey _scaffoldKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 3);
    _screenList=[
      ListView_Demo(),
      Profile_Page(),
      ImageDateTime(),
      Login_Account(),

    ];
  }

  _setPage(int Index){
    setState(() {
      _pageController.jumpToPage(Index);
      _pageIndex=Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
       if(_pageIndex!=1){
         _setPage(1);
         return false;
       }else{
         return true;
       }

      },
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text(title),
          ),
          drawer: const CustomDrawer(),
          bottomNavigationBar: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
            ),
            child: Row(
              children: [
                BottomNavItem(icon: Icons.list_alt_outlined, isSelect: _pageIndex==0, onTap: _setPage(0)),
                BottomNavItem(icon: Icons.person, isSelect: _pageIndex==1, onTap: _setPage(1)),
                BottomNavItem(icon: Icons.date_range, isSelect: _pageIndex==2, onTap: _setPage(2)),
                BottomNavItem(icon: Icons.login, isSelect: _pageIndex==3, onTap: _setPage(3))
              ],
            ),
          ),

          body: PageView.builder(
              controller: _pageController,
              itemCount: _screenList.length,
              physics: ScrollPhysics(),
              itemBuilder: (context, index){
                return _screenList[index];
              }),


        )
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final bool isSelect;
  late Function() onTap;


  BottomNavItem({required this.icon, required this.isSelect, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap: (){
        onTap();
      },
      child: Icon(icon),
    ));
  }
}
