import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/Pages/auth.dart';
import 'Pages/Component.dart';
import 'Pages/Home/HomePage.dart';
import 'Pages/SignHome/first_Page_Auth.dart';
import 'package:provider/provider.dart';

void main() async {
  //١ و ٢ للفاير بيس علشان يكون فيه اتصال اول مايشتغل البرنامج
  WidgetsFlutterBinding.ensureInitialized(); //١
  await Firebase.initializeApp();//٢
  runApp(MainPage());
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
      return HomePage();
    } else {
      print("First Page");
      return FirstPageAuth();
    }
  }
}
