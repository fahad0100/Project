import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_app/Component/PublicCompoent.dart';
import 'package:store_app/Component/auth.dart';
import 'package:store_app/NewPage/Login/LoginCompoent.dart';
import 'package:provider/provider.dart';

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  //============================
  final ColorRed = myColors().ColorsRed1();
  final ColorYaluw = myColors().ColorsYalow1();
  double the_height = 0.0;
  double the_width = 0.0;
  final email = TextEditingController();
  final pass = TextEditingController();
  bool start = false;

  test() async {
    setState(() {
      the_height = getHeight(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height);
      the_width = getWidth(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height);
    });
  }

  //============================

  @override
  Widget build(BuildContext context) {
    test();
    return Scaffold(
      body: Container(
        height: the_height > MediaQuery.of(context).size.width
            ? the_height
            : the_height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                the_width < MediaQuery.of(context).size.width
                    ? Logo(MediaQuery.of(context).size.width, the_width / 3,
                        ColorRed)
                    : Logo(MediaQuery.of(context).size.width, the_height / 3,
                        ColorRed),
                Padding(
                  padding: EdgeInsets.only(
                      left: the_width == MediaQuery.of(context).size.width
                          ? 20
                          : 20,
                      top: the_width == MediaQuery.of(context).size.width
                          ? 40
                          : 30),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/First_Page', (Route<dynamic> route) => false);
                      },
                      child: Image.asset("Images/arrow-left.png")),
                ),
              ],
            ),
            Center(
                child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "تسجيل الدخول",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: ColorRed),
              ),
            )),
            SizedBox(
              height: the_width < MediaQuery.of(context).size.width ? 20 : 40,
            ),
            Center(
              child: Container(
                height: the_width < MediaQuery.of(context).size.width
                    ? MediaQuery.of(context).size.width / 3
                    : MediaQuery.of(context).size.width / 1.5,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  children: [
                    textFiled("البريد الالكتروني", ColorRed, false, Icons.email,
                        email, TextInputType.emailAddress),
                    textFiled("كلمة السر", ColorRed, true, Icons.lock, pass,
                        TextInputType.visiblePassword),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topLeft,
                      child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.topLeft,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/Forgotten',
                                    (Route<dynamic> route) => false);
                              },
                              child: Text("نسيت كلمة السر"),
                            ),
                          )),
                    ),
                    FlatButton(
                        onPressed: () async {
                          print(email.text);
                          print(pass.text);

                          if (email.text != null &&
                              email.text != "" &&
                              pass.text != null &&
                              pass.text != "") {
                            final Sign_In = await funTrySign(email.text, pass.text,
                                context.read<AuthService>());
                            if (Sign_In == "Sign In") {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/CheckPage',
                                  (Route<dynamic> route) => false);
                            }
                          } else {
                            Fluttertoast.showToast(
                                msg: "اكمل الحقول",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        },
                        child: Text(
                          "الدخول",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
            the_width < MediaQuery.of(context).size.width
                ? under(MediaQuery.of(context).size.width, the_width / 4,
                    ColorYaluw)
                : under(MediaQuery.of(context).size.width, the_height / 4,
                    ColorYaluw),
          ],
        ),
      ),
    );
  }
}
