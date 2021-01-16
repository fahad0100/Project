import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  bool secureTextPassFirst = true;
  bool secureTextPassSecend = true;
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(

        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  Container(

                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/FirstPageAuth");
                      },
                      color: Colors.black,
                      icon: Image(
                        image: AssetImage("Images/arrow-left.png"),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 25),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "إنشاء حساب متجر",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "اسم المتجر",
                              prefixIcon: Icon(
                                Icons.store,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),// حقل اسم المتجر
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "اسم صاحب المتجر",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),// حقل اسم صاحب المتجر
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            strutStyle: StrutStyle(fontSize: 25),
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "البريد الالكتروني",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 15,
                            keyboardType: TextInputType.phone,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "رقم صاحب المتجر",
                              hintText: "+9665555555555",
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            keyboardType: TextInputType.phone,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "رقم المتجر",
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "منطقة المتجر",
                              prefixIcon: Icon(
                                Icons.location_city,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "مدينة المتجر",
                              prefixIcon: Icon(
                                Icons.location_city,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 100,
                            minLines: 1,
                            maxLines: 3,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "عنوان المتجر",
                              hintText: "مثال: شارع عمر بن الخطاب مقابل بنك الراجحي",
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Colors.black,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            strutStyle: StrutStyle(fontSize: 25),
                            obscureText: secureTextPassFirst,
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "كلمة السر",
                              prefixIcon: IconButton(
                                icon: Icon(
                                  secureTextPassFirst ? Icons.security:Icons.remove_red_eye_rounded,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  setState(() {
                                    secureTextPassFirst = !secureTextPassFirst;
                                  });
                                },
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: TextFormField(
                            maxLength: 45,
                            obscureText: secureTextPassSecend,
                            strutStyle: StrutStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                            cursorColor: Colors.black,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              labelText: "اعادة كلمة السر",
                              prefixIcon: IconButton(
                                icon: Icon(
                                  secureTextPassSecend ? Icons.security:Icons.remove_red_eye_rounded,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                                  setState(() {
                                    secureTextPassSecend = !secureTextPassSecend;
                                  });
                                },
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //>>>>>>>>>>>>>>>>>
                        SizedBox(
                          height: 38,
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
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 0.5,
                                      offset: Offset(2, 2),
                                      spreadRadius: 1),
                                ],
                                border: Border.all(color: Colors.black)),
                            child: Text(
                              "إنشاء حساب",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: 25,)
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
