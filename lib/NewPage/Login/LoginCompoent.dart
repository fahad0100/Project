import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

ImageShow(double height, String imageString) {
  final _image = imageString;
  var size = height;

  return Container(
    height: size,
    width: size,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(_image), fit: BoxFit.contain)),
  );
}

//----------------------------------------------
GetSize(screenSize) {
  var _screen = screenSize;
  if (_screen.width < _screen.height) {
    var w = _screen.width;
    print("Secren width = $w");
    return _screen.width - 150;
  } else {
    var h = _screen.height;
    print("Secren height = $h");
    return _screen.height / 2;
  }
}
//----------------------------------------------

//----------------------------------------------

Logo(double width, double height, Color color) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(height),
      ),
    ),
    alignment: Alignment.center,
    child: Container(
      margin: EdgeInsets.only(top: 20),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Images/Logo.png"),
            fit: BoxFit.contain,
            alignment: Alignment.center),
      ),
    ),
  );
}
//----------------------------------------------

under(double width, double height, Color color) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(height),
      ),
    ),
    alignment: Alignment.center,
  );
}

//----------------------------------------------

funTrySign(
  String Email,
  String Password,
  context,
) async {
  var SignIn = await await context.SignIn(email: Email, password: Password);
  print(SignIn);
  if (SignIn == "true") {
    Fluttertoast.showToast(
      msg: "تم تسجيل الدخول",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    return "Sign In";
  } else {
    Fluttertoast.showToast(
        msg: SignIn,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  return "not Sign In";
}
