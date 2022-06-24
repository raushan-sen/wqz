import 'package:flutter/material.dart';

import '../utils/colors.dart';

class WinningScreen extends StatefulWidget {
  const WinningScreen({
    Key? key,
    required this.userid,
    required this.qid,
  }) : super(key: key);
  final String userid;
  final String qid;
  @override
  State<WinningScreen> createState() => _WinningScreenState();
}

class _WinningScreenState extends State<WinningScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dominantcolor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Level 1 Completed"),
          elevation: 0,
          backgroundColor: dominantcolor,
        ),
        body: Stack(children: const []),
      ),
    );
  }
}
