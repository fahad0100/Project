



import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

SignUpTry(
    {String NameStore,
      String Email,
      String Phone,
      String Password,
      context}) async {
  var database = FirebaseDatabase.instance;
  var SignUp = await context.SignUp(email: Email, password: Password);
  print(SignUp);
  if (SignUp == "true") {
    print("-----------------------");
    var idUser = await context.getUserID();
    final user1 = UserForDataBaseTry();

    final data = user1.getUser(
        Name_Store: NameStore,
        Email: Email,
        Phone_Person: Phone,
        Password: Password);
    await database
        .reference()
        .child("Store")
        .child(idUser)
        .child("Info")
        .set(data);
    Fluttertoast.showToast(
        msg: "تم انشاء الحساب",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
    return "Sign Up";
  } else {
    Fluttertoast.showToast(
        msg: SignUp,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class UserForDataBaseTry {
  String NameStore;
  String Email;
  String PhonePerson;
  String Password;

  UserForDataBaseTry();

  Map<String, String> getUser({
    String Name_Store,
    String Email,
    String Phone_Person,
    String Password,
  }) {
    this.NameStore = Name_Store;
    this.Email = Email;
    this.PhonePerson = Phone_Person;
    this.Password = Password;
    return {
      "Name Store": this.NameStore,
      "Email": this.Email,
      "Phone Person": this.PhonePerson,
      "Password": this.Password,
    };
  }
}