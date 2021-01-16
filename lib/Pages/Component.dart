import '../main.dart';
import 'SignHome/ForgottenPage.dart';
import 'SignHome/LoginPage.dart';
import 'SignHome/SignUp.dart';
import 'SignHome/first_Page_Auth.dart';

RoutFunc()
{
  return {
    '/FirstPageAuth': (context) => FirstPageAuth(),
    '/LoginPage': (context) => LoginPage(),
    '/SignUpPage': (context) => SignUpPage(),
    '/ForgottenPage': (context) => ForgottenPage(),
    '/CheckPage': (context) => CheckPage(),

  };
}