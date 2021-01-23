import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_app/Component/PublicCompoent.dart';
import 'package:store_app/Component/auth.dart';
import 'package:provider/provider.dart';
import 'RegisterComponent.dart';

final ColorRed = myColors().ColorsRed1();

class SignUp_Page extends StatefulWidget {
  @override
  _SignUp_PageState createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  @override
  var size;
  double width;
  double height;
  Color ColorRed = myColors().ColorsRed1();
  Color ColorYalow = myColors().ColorsYalow1();
  final NameStore = TextEditingController();
  final Email = TextEditingController();
  final Phone = TextEditingController();
  final pass = TextEditingController();
  final repass = TextEditingController();

  Widget build(BuildContext context) {
    setState(() {
      ColorRed = myColors().ColorsRed1();
      size = MediaQuery.of(context).size;
      width = getWidth(size.width, size.height);
      height = getHeight(size.width, size.height);
    });

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: height == MediaQuery.of(context).size.height ? height : width,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                Container(
                  height: width == MediaQuery.of(context).size.width
                      ? width / 1.5
                      : width / 3,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ColorRed,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(height))),
                  child: Image.asset(
                    "Images/Logo.png",
                    fit: BoxFit.contain,
                    width: 150,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left:
                          width == MediaQuery.of(context).size.width ? 20 : 20,
                      top:
                          width == MediaQuery.of(context).size.width ? 40 : 30),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/First_Page', (Route<dynamic> route) => false);
                      },
                      child: Image.asset("Images/arrow-left.png")),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: textFiled("اسم المتجر", ColorRed, false,
                        Icons.perm_contact_cal, NameStore, TextInputType.text),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: textFiled(
                        "البريد الالكتروني",
                        ColorRed,
                        false,
                        Icons.email,
                        Email,
                        TextInputType.emailAddress),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: textFiled("جوال", ColorRed, false,
                        Icons.phone, Phone, TextInputType.phone),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: textFiled(
                        "كلمة المرور",
                        ColorRed,
                        false,
                        Icons.lock,
                        pass,
                        TextInputType.visiblePassword),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: textFiled(
                        "تاكيد كلمة المرور",
                        ColorRed,
                        false,
                        Icons.lock,
                        repass,
                        TextInputType.visiblePassword),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 40),
                    child: FlatButton(
                      child: Text(
                        "إنشاء حساب",
                        style: TextStyle(
                            color: ColorRed,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        if (pass.text == repass.text) {
                          if (NameStore.text != "" &&
                              NameStore.text != null &&
                              Email.text != "" &&
                              Email.text != null &&
                              Phone.text != "" &&
                              Phone.text != null) {
                            final Sign_Up = await SignUpTry(
                                NameStore: NameStore.text,
                                Email: Email.text,
                                Password: pass.text,
                                Phone: Phone.text,
                                context: context.read<AuthService>());
                            if (Sign_Up == "Sign Up") {
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
                        } else {
                          Fluttertoast.showToast(
                              msg: "كلمة السر غير متطابقه",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 3,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: width == MediaQuery.of(context).size.width
                  ? width /2.3
                  : width / 3,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorYalow,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(height))),
            ),
          ],
        ),
      ),
    );
  }
}


