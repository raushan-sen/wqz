import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wqz/provider/google_sign_in.dart';
import 'package:wqz/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Number Flat",
          initialRoute: '/login',
          routes: {
            // '/splash_screen':(context) => const SplashScreen(),
            '/': (context) => const MyHome(),
            '/levels': (context) => const MyLevels(
                  level: '3',
                  userid: '4',
                ),
            '/login': (context) => const MyLogin(),
            '/playscreen': (context) => const GamePlay(id: 8, userid: 780),
            '/winning_screen': (context) =>
                const WinningScreen(userid: "userid", qid: "qid")
          }),
    );
  }
}
