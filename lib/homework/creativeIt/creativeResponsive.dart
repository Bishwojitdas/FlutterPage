import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/creativeIt/creativeMobile.dart';
import 'package:link_up_pages/homework/creativeIt/creativeTab.dart';
import 'package:link_up_pages/homework/creativeIt/creativeWeb.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';

class CreativeResponsive extends StatefulWidget {
  const CreativeResponsive({Key? key}) : super(key: key);

  @override
  State<CreativeResponsive> createState() => _CreativeResponsiveState();

}

class _CreativeResponsiveState extends State<CreativeResponsive> {
  @override
  Widget build(BuildContext context) {
    FullWidth(context);
    FullHeight(context);
    return LayoutBuilder(
        builder: (context, constain)
        {
          if(constain.maxWidth<500){
            return CreativeMobile();
          }else if(constain.maxWidth<1000){
            return CreativeTab();
          }
          else{
            return CreativeWeb();
          }
        }
    );
  }
}
