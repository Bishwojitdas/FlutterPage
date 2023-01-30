import 'package:flutter/material.dart';
import 'package:link_up_pages/mobileDesign.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';
import 'package:link_up_pages/webDesign.dart';

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({Key? key}) : super(key: key);

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    FullWidth(context);
    FullHeight(context);
    return LayoutBuilder(
        builder: (context, constain)
    {
      if(constain.maxWidth<500){
        return MobileDesign();
      } else{
        return WebDesign();
      }
    }
    );
  }
}

