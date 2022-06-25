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
          initialRoute: '/',
          routes: {
            // '/splash_screen':(context) => const SplashScreen(),
            '/': (context) => const MyHome(),
            '/levels': (context) => const MyLevels(
                  level: '3',
                  userid: '4',
                ),
            '/login': (context) => const MyLogin(),
            // '/playscreen': (context) => GamePlay(id: "8", userid: "780",level: "Basic",),
            '/winning_screen': (context) =>
                const WinningScreen(userid:4, qid: 3,level: "Basic")
          }),
    );
  }
}

class MyLogin extends StatelessWidget {
  const MyLogin({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(1, 88, 77, 77),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Number \nFlat",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            GestureDetector(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(88, 77, 77, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Sign In With Google",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
