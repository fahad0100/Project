import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:custom_fade_animation/custom_fade_animation.dart';

class FirstPageAuth extends StatefulWidget {
  @override
  _FirstPageAuthState createState() => _FirstPageAuthState();
}

class _FirstPageAuthState extends State<FirstPageAuth> {
  @override
  Widget build(BuildContext context) {
    var test = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: FadeAnimation(1,Container(
          width: MediaQuery.of(context).size.width,
          height: (test < MediaQuery.of(context).size.width
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.height),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/backGround.png"),
                fit: BoxFit.contain),
          ),
          child: ListView(
            children: [
            FadeAnimation(2,Container(
                  height: MediaQuery.of(context).size.height / 2 + 120,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "مرحبا بك في",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "Meal",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ))),
            FadeAnimation(2,Container(
                child: Column(
                  children: [
                    FlatButton(
                        onPressed: () {
                          // Navigator.pushNamedAndRemoveUntil(context, "/SignUpPage", (Route<dynamic> route) => false);
                          Navigator.pushNamed(context, "/SignUpPage");

                          //'/SignUpPage');
                        },
                        child: Container(
                          child: Text(
                            "إنشاء حساب جديد",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          alignment: Alignment.center,
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                    blurRadius: 1,
                                    spreadRadius: 1)
                              ]),
                        )),
                    SizedBox(
                      height: 60,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/LoginPage");
                        },
                        child: Text("تسجيل الدخول",
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 20)))
                  ],
                ),
              ))
            ],
          ),
        ),
        )),
    );
  }
}
