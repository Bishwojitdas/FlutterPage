import 'package:flutter/material.dart';
import 'package:link_up_pages/utils/dimensions.dart';

const LatoBlack=TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w900,
);

const LatoBold=TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w700,
);

const LatoRegular=TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w400,
);

const LatoLight=TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w300,
);

const LatoThin=TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w100,
);

const ChivoMonoBlack=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w900,
);

const ChivoMonoExtraBold=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w800,
);

const ChivoMonoBold=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w700,
);

const ChivoMonoSemiBold=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w600,
);

const ChivoMonoMedium=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w500,
);

const ChivoMonoRegular=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w400,
);

const ChivoMonoLight=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w300,
);

const ChivoMonoExtraLight=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w200,
);

const ChivoMonoThin=TextStyle(
  fontFamily: 'Chivo Mono',
  fontSize: Dimensions.FontSizeDefault,
  fontWeight: FontWeight.w100,
);

  FullWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  FullHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }


isPotrate(BuildContext context){
  return MediaQuery.of(context).orientation;
}