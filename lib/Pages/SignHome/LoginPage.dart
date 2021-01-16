import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_app/Pages/auth.dart';
import 'package:provider/provider.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _secureText = true;
  String UseID;
  var check;
  final email = TextEditingController();
  final pass = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(0.7,Container(
        child: FadeAnimation(0.7,ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                FadeAnimation(0.7,Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 25),
                    child: IconButton(
                        icon: Image(
                          image: AssetImage(
                            "Images/arrow-left.png",
                          ),
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/FirstPageAuth");
                        }),
                  )),
                   Container(
                    padding: EdgeInsets.only(right: 25),
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2 - 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/backGround.png"),
                    fit: BoxFit.contain),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "البريد الالكتروني",
                        fillColor: Colors.black,
                        focusColor: Colors.black,
                        hoverColor: Colors.black,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      controller: pass,
                      obscureText: _secureText,
                      decoration: InputDecoration(
                        labelText: "كلمة السر",
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                          icon: Icon(
                            _secureText ? Icons.security : Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/ForgottenPage");
                          },
                          child: Text(
                            "استعادة كلمة السر",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),



                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1, 1))
                          ]),
                      child: FlatButton(
                          height: 50,
                          minWidth: 200,
                          onPressed: () async {




                            var test = await context.read<AuthService>().SignIn(
                                  email: email.text.trim(),
                                  password: pass.text.trim(),
                                );
                            if (test == "true") {
                              var use =
                                  await context.read<AuthService>().getUserID();

                              if (use != null) {
                                Fluttertoast.showToast(
                                    msg: "تم تسجيل الدخول",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 3,
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                                Future.delayed(Duration(seconds: 1), () {
                                  print("------");
                                  print(use);
                                  Navigator.pushNamed(context, "/CheckPage");
                                });

                              }
                            } else {
                              Fluttertoast.showToast(
                                  msg: "فشلة عملية تسجيل الدخول",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 3,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );

                            }






                          },
                          child: Text(
                            "تسجيل دخول",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),)
      ),),
    );
  }
}


