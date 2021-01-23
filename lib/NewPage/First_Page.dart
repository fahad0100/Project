import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/Component/PublicCompoent.dart';

class First_Page extends StatefulWidget {
  @override
  _First_PageState createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  final ColorRed = myColors().ColorsRed1();
  final ColorYaluw = myColors().ColorsYalow1();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeAnimation(
              0.5,
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: ColorRed,
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(MediaQuery.of(context).size.height / 3),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        FadeAnimation(
                          1.0,
                          Container(
                            width: 150,
                            height: 150,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Images/Logo.png"),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("data"),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: FlatButton(
                child: FadeAnimation(
                  1.5,
                  Container(
                    width: 200,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorRed, width: 0.2),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0.1,
                            offset: Offset(2, 2),
                            blurRadius: 3)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: FlatButton(
                      height: 40,
                      minWidth: 200,
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            color: ColorRed,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/Login', (Route<dynamic> route) => false);
                      },
                    ),
                  ),
                ),
              ),
            ),
            FadeAnimation(
              2.0,
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorYaluw,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                            MediaQuery.of(context).size.height / 3))),
                child: FadeAnimation(
                  2.5,
                  FlatButton(
                    child: Text(
                      "إنشاء حساب جديد",
                      style: TextStyle(
                          color: ColorRed,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/Register', (Route<dynamic> route) => false);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
