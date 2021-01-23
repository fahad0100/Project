import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:store_app/Component/PublicCompoent.dart';
import 'package:store_app/Component/auth.dart';
import 'package:provider/provider.dart';

class ForgottenPage extends StatefulWidget {
  @override
  _ForgottenPageState createState() => _ForgottenPageState();
}

class _ForgottenPageState extends State<ForgottenPage> {
  @override
  var size;
  double width;
  double height;
  Color ColorRed = myColors().ColorsRed1();
  Color ColorYalow = myColors().ColorsYalow1();
  final email = TextEditingController();

  Widget build(BuildContext context) {
    setState(() {
      size = MediaQuery.of(context).size;
      width = getWidth(size.width, size.height);
      height = getHeight(size.width, size.height);
    });
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
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
                            '/Login', (Route<dynamic> route) => false);
                      },
                      child: Image.asset("Images/arrow-left.png")),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25,right: 25),child: textFiled("البريد الالكتروني",ColorRed,false,Icons.email,email,TextInputType.emailAddress),),

                      Padding(
                        padding: EdgeInsets.only(top: 20,bottom: 40),
                        child: FlatButton(
                          child: Text(
                            "استعادة كلمة المرور",
                            style: TextStyle(
                                color: ColorRed,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            print(email.text);
                            if(email.text != "") {
                              final Forgot = await rest(context: context.read<AuthService>(),Email:email.text );
                              print("10101010110101010110");
                              print(Forgot);

                                Fluttertoast.showToast(
                                  msg: Forgot,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 3,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0,
                                );
                              }else{
                              Fluttertoast.showToast(
                                msg: "ادخل بريدك الالكتروني",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }
                          },
                        ),
                      )

                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

rest({String Email, context})async{
  final Forgot = await context.Forgot(email: Email);
  return Forgot;

}