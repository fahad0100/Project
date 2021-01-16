import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flat_segmented_control/flat_segmented_control.dart';
import 'package:provider/provider.dart';
import '../auth.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _start = "10";
  Timer _timer;

  void startTimer() {

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 25, top: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Images/ImageBackGround.png"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      color: Colors.red),
                ),
              ),

              Container(
                padding: EdgeInsets.only(right: 25),
                width: MediaQuery.of(context).size.width / 2,
                child: Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(left: 25, top: 10),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_alert,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    onPressed: () {
                      print("Ddddd");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: FlatSegmentedControl(
            tabChildren: <Widget>[
              Container(
                height: 50.0,
                child: Center(
                    child: Text(
                  "الطلبات",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepPurple),
                )),
              ),
              Container(
                height: 50.0,
                child: Center(
                    child: Text("المنتجات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple))),
              ),
              Container(
                height: 50.0,
                child: Center(
                    child: Text("الاقسام",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple))),
              ),
              Container(
                height: 50.0,
                child: Center(
                    child: Text("الاقسام",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple))),
              ),
              Container(
                height: 50.0,
                child: Center(
                    child: Text("الاقسام",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple))),
              ),
            ],
            childrenHeight: 150.0,
            children: <Widget>[
              FlatButton(
                  onPressed: () async {
                    // // _incrementCounter();
                    // final sign = context.read<AuthService>().UserIdAuth();
                    // print(sign.toString());

                    final sign = context.read<AuthService>().SignOut();
                    print(sign);
                    Navigator.pushNamed(context, "/CheckPage");
                    startTimer();
                  },
                  child: Text("Subment")),
              Center(child: Text("$_start")),
              Center(child: Text("View 3")),
              Center(child: Text("View 4")),
              Center(child: Text("View 5")),
            ],
          ),
        )
      ],
    ));
  }
}
