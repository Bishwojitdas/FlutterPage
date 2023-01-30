import 'package:flutter/material.dart';
import 'package:link_up_pages/homework/chaldal/chadalMobileDesign.dart';
import 'package:link_up_pages/homework/chaldal/chadalWeb.dart';
import 'package:link_up_pages/mobileDesign.dart';
import 'package:link_up_pages/utils/customiazationFont.dart';
import 'package:link_up_pages/webDesign.dart';

class ChadalResponsiveDesign extends StatefulWidget {
  const ChadalResponsiveDesign({Key? key}) : super(key: key);

  @override
  State<ChadalResponsiveDesign> createState() => _ChadalResponsiveDesignState();
}

class _ChadalResponsiveDesignState extends State<ChadalResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    FullWidth(context);
    FullHeight(context);
    return LayoutBuilder(
        builder: (context, constain)
    {
      if(constain.maxWidth<500){
        return ChadalMobileDesign();
      } else{
        return ChadalWebDesign();
      }
    }
    );
  }
}

