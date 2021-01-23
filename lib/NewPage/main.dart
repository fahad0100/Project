import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/NewPage/Home/HomePage.dart';
import 'First_Page.dart';
import 'package:provider/provider.dart';
import '../Component.dart';
import '../Component/auth.dart';

void main() async {
  //١ و ٢ للفاير بيس علشان يكون فيه اتصال اول مايشتغل البرنامج
  WidgetsFlutterBinding.ensureInitialized(); //١
  await Firebase.initializeApp(); //٢
  runApp(EasyLocalization(
      child: MainPage(),
      startLocale: Locale('en', 'EN'),
      saveLocale: true,
      supportedLocales: [Locale('en', 'EN'),Locale('ar', 'AR')],
      path: "lang"),);
}




class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // الاتصال مع ملف الايثنتكيشن علشان اقدر استدعي في اي مكان
        Provider<AuthService>(
          create: (_) => AuthService(FirebaseAuth.instance),
        ),
        // للحصول على اي تغير
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CheckPage(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: "home",
          routes: RoutFunc()),
    );
  }
}

class CheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      print("Home Page");
      return Home_Page();
    } else {
      print("First Page");
      return First_Page();
    }
  }
}
