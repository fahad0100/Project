import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgottenPage extends StatefulWidget {
  @override
  _ForgottenPageState createState() => _ForgottenPageState();
}

class _ForgottenPageState extends State<ForgottenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: IconButton(
              icon: Image(
                image: AssetImage("Images/arrow-left.png"),
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/FirstPageAuth");
              }),
        ),
        Container(
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/backGround.png"),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 5,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "البريد الالكتروني",
                    labelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    )),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        FlatButton(
            onPressed: () {},
            child: Container(
              width: 200,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 1),
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Text(
                "استعادة كلمة المرور",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ))
      ],
    ));
  }
}
