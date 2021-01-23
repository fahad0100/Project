import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/Component/PublicCompoent.dart';
import 'package:store_app/Component/auth.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:io';
import 'HomeCompoent.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}


List code = ["ar","en"];
List contrey = ["AR","EN"];

class _Home_PageState extends State<Home_Page> {
  @override
  var IDS;
  var Number = ["1111111", "222222", "333333"];
  double width; // عرض الشاشه عند تغير الشاشه يتغر الحجم
  double height; // طول الشاشه عند تغير الشاشه يتغر الحجم
  double the_width; // عرض الشاشه ثابت
  double haf_the_width;
  double haf_haf_the_width;
  double the_height; // طول الشاشه ثابت
  double haf_the_height;
  double haf_haf_the_height;

  // من ملف PublicCompoent
  Color ColorRed = myColors().ColorsRed1();
  Color ColorYalow = myColors().ColorsYalow1();

  Widget build(BuildContext context) {
    setState(() {
      width = MediaQuery
          .of(context)
          .size
          .width;
      height = MediaQuery
          .of(context)
          .size
          .height;
      // من ملف PublicCompoent
      the_width = getWidth(width, height);
      haf_the_width = the_width / 2;
      haf_haf_the_width = haf_the_width / 2;
      // من ملف PublicCompoent
      the_height = getHeight(width, height);
      haf_the_height = the_height / 2;
      haf_haf_the_height = haf_the_height / 2;
      IDS = [
        "1039948594",
        "1048394856",
        "1009879465",
        "0389583729",
        "1029384756"
      ];
    });
    void test() {
      print("ddd");
    }

    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: the_height,
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                underBackGroundUpInfo(
                  height: width == the_width
                      ? haf_the_width / 1.1
                      : the_width / 2.7,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  color: ColorRed,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        color: ColorRed,
                        width: the_width == width
                            ? haf_haf_the_width
                            : haf_haf_the_width,
                        height: the_width == width
                            ? haf_haf_the_width / 1.1
                            : haf_haf_the_width / 1.9,
                        child: IconButton(
                            icon: Icon(
                              Icons.logout,
                              color: ColorYalow,
                            ),
                            onPressed: () {
                              context.read<AuthService>().SignOut();
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            color: ColorRed,
                            width: the_width == width ? width : haf_the_height,
                            height: the_width == width
                                ? haf_haf_the_width / 1.3
                                : haf_haf_the_width / 1.2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: the_width == width ? 20 : 50),
                                Container(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 4),
                                      Text(ContNumber(1002938),
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                      SizedBox(height: 4),
                                      Text("زوار المتجر",
                                          style: TextStyle(
                                              color: ColorYalow, fontSize: 10))
                                    ],
                                  ),
                                ),
                                SizedBox(width: the_width == width ? 20 : 50),
                                Container(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.monetization_on,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 4),
                                      Text(ContNumber(1002938),
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                      SizedBox(height: 4),
                                      Text("الارباح",
                                          style: TextStyle(
                                              color: ColorYalow, fontSize: 10))
                                    ],
                                  ),
                                ),
                                SizedBox(width: the_width == width ? 20 : 50),
                                Container(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.money_off,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 4),
                                      Text(ContNumber(1002938),
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                      SizedBox(height: 4),
                                      Text("التكلفه",
                                          style: TextStyle(
                                              color: ColorYalow, fontSize: 10))
                                    ],
                                  ),
                                ),
                                SizedBox(width: the_width == width ? 20 : 50),
                                Container(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_basket_sharp,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 4),
                                      Text(ContNumber(1002938),
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11)),
                                      SizedBox(height: 4),
                                      Text("الطلبات",
                                          style: TextStyle(
                                              color: ColorYalow, fontSize: 10))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                BackGroundLogoStore(
                  heightBackGround:
                  the_width == width ? the_width / 1.7 : the_width / 1.5,
                  widthBackGround:
                  the_width == width ? haf_the_width : the_width,
                  paddingBackGround: the_width == width ? 40 : 50,
                  RadiusbottomLeft: the_width == width ? width / 2.5 : width,
                  colorBackGround: ColorRed,
                  child: LogoStore(
                    width: the_width == width
                        ? haf_the_width
                        : haf_the_width / 1.1,
                    height: the_width == width
                        ? haf_the_width / 2
                        : haf_the_width / 1.1,
                    color: ColorYalow,
                    image: "Images/Logo.png",
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: the_width == width ? 50 : 25),
                    child: Text(
                      "متجر ستايل ستيل",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.green,
                  width: width == the_width ? width / 1.5 : width / 2,
                  height: haf_the_width,
                  alignment: Alignment.center,
                  // haf_the_width - 20
                  margin: EdgeInsets.only(
                      top: width == the_width
                          ? haf_the_width - 20
                          : haf_the_width - 50),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    color: Colors.yellow,
                                    icon: Icon(
                                      Icons.remove_red_eye_sharp,
                                    ),
                                    onPressed: () {
                                      setState(() {});
                                    }),
                                Text(
                                  "عرض المتجر",
                                  style: TextStyle(color: ColorRed),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    color: Colors.yellow,
                                    icon: Icon(
                                      Icons.add_circle,
                                    ),
                                    onPressed: () {

                                    }),
                                Text(
                                  "اضافة",
                                  style: TextStyle(color: ColorRed),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    color: Colors.yellow,
                                    icon: Icon(
                                      Icons.people_sharp,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  "العملاء",
                                  style: TextStyle(color: ColorRed),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    color: Colors.yellow,
                                    icon: Icon(
                                      Icons.settings,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  "الاعدادات",
                                  style: TextStyle(color: ColorRed),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    color: Colors.yellow,
                                    icon: Icon(
                                      Icons.local_offer,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  "كود خصم",
                                  style: TextStyle(color: ColorRed),
                                  maxLines: 2,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            width: 80,
                            height: 80,
                            child: Column(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    color: Colors.yellow,
                                    icon: Icon(
                                      Icons.reorder,
                                    ),
                                    onPressed: () {}),
                                Text(
                                  "الطلبات",
                                  style: TextStyle(color: ColorRed),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 50,
              padding: EdgeInsets.only(right: 25),
              alignment: Alignment.centerRight,
              child: Text(
                "طلبات العملاء",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: ColorRed),
              ),
            ),
            //هنا هنا هنا
            Container(
              // child: ListView.builder(
              //     itemCount: IDS.length,
              //     shrinkWrap: true,
              //     primary: false,
              //     itemBuilder: (context, index) {
              //       var ID = IDS[index];
              //       return FlatButton(
              //         onPressed: () {
              //           print("Ddd");
              //         },
              //         padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              //         child: Container(
              //             width: width,
              //             height: width / 2,
              //             color: ColorRed,
              //
              //             child: Column(
              //               children: [
              //                 Padding(padding: EdgeInsets.only(left: 20,top: 10),child: Align(
              //                   alignment: Alignment.topLeft,
              //                   child: Text(
              //                     "#$ID",
              //                     style: TextStyle(color: Colors.white,fontSize: 10),
              //                   ),
              //                 ),)
              //               ],
              //             )),
              //       );
              //     }),
              
            ),
            SizedBox(height: 30,)
            //هنا هنا هنا
          ],
        ),
      ),
    );
  }


}

