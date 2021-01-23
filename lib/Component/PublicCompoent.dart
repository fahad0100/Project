import 'package:flutter/material.dart';


//----------------------------------------------

class myColors
{
  Color ColorsRed1(){
    return Color(0xFFAB161A);
  }
  Color ColorsYalow1(){
    return Color(0xFFFEE580);
  }

}

//----------------------------------------------


double getHeight(double width, double height) {
  if (height < width) {
    print("1");
    return width;
  } else {
    print("2");
    return height;
  }
}
//----------------------------------------------

double getWidth(double width, double height) {
  if (height < width) {
    return height;
  } else {
    return width;
  }
}

//----------------------------------------------

textFiled(String Name, Color color, bool scureText, IconData myIcons,controller,TextInputType keyboardType) {
  return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: Name,
          icon: Icon(
            myIcons,
            color: color,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color),
          ),
        ),
        obscureText: scureText,
        cursorColor: color,
      ));
}