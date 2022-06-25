import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wqz/main.dart';
import 'package:wqz/screens/winnig_screen.dart';
import 'package:wqz/widgets/home_widget.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return const MyHomewidget();
          } else if (snapshot.hasError) {
            return const Center(
                child: Text("Something Went Wrong!\n \nTry Again"));
          } else {
            return const MyHomewidget();
            // const WinningScreen(qid: "2",userid: '1');
          }
        });
  }
}
