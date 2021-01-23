import 'package:store_app/NewPage/First_Page.dart';
import 'package:store_app/NewPage/Login/LoginPage.dart';
import 'package:store_app/NewPage/Register/Register.dart';
import 'NewPage/Home/HomePage.dart';
import 'NewPage/forgotten/Forgotten.dart';
import 'NewPage/main.dart';


RoutFunc()
{
  return {

    //---------------------------------------------------------
    '/First_Page': (context) => First_Page(),
    '/Login': (context) => Login_Page(),
    '/Register': (context) => SignUp_Page(),
    '/Forgotten': (context) => ForgottenPage(),
    '/Home': (context) => Home_Page(),
  };
}