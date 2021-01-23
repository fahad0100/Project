
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

underBackGroundUpInfo(
    {double width, double height, Color color, Widget child}) {
  return Container(
      width: width,
      height: height,
      color: color,
      alignment: Alignment.centerLeft,
      child: child);
}

BackGroundLogoStore(
    {double widthBackGround,
      double heightBackGround,
      double paddingBackGround,
      Color colorBackGround,
      double RadiusbottomLeft,
      Widget child}) {
  return Align(
      alignment: Alignment.centerRight,
      child: Container(
          width: widthBackGround,
          height: heightBackGround,
          padding: EdgeInsets.only(left: paddingBackGround),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: colorBackGround,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(RadiusbottomLeft),
            ),
          ),
          child: child));
}

//____________________________

LogoStore({double width, double height, Color color, String image}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      border: Border.all(color: color, style: BorderStyle.solid),
      image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
          alignment: Alignment.center),
    ),
  );
}

ContNumber(Number) {
  /*
10000
   */


  var Cunount = Number.toString();
  var num = "";
  if (Cunount.length <= 3) {
    return Cunount;
  } else if (Cunount.length <= 4) {
    for (var i = 0; i < 1; i++) {

      num = Cunount[i] ;
    }
    return num + "K";
  }else if (Cunount.length <= 5 ) {
    for (var i = 0; i < 2; i++) {

      num = num + Cunount[i];
    }
    return num + "K";
  } else if (Cunount.length <= 6 ) {
    for (var i = 0; i < 1; i++) {

      num = num + Cunount[i];
    }
    return num + "M";
  }else if (Cunount.length <= 7 ) {
    for (var i = 0; i < 2; i++) {

      num = num + Cunount[i];
    }
    return num + "M";
  }else if (Cunount.length <= 8 ) {
    for (var i = 0; i < 3; i++) {
      num = num + Cunount[i];
    }
    return num + "M";
  }else if (Cunount.length <= 9 ) {
    for (var i = 0; i < 4; i++) {
      num = num + Cunount[i];
    }
    return num + "M";
  }else if (Cunount.length <= 10 ) {
    for (var i = 0; i < 4; i++) {
      num = num + Cunount[i];
    }
    return num + "M";
  }else{
    for (var i = 0; i < 10; i++) {
      num = num + Cunount[i];
    }
    return num + "KM";
  }


}
