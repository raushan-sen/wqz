import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:wqz/screens/screens.dart';

import '../utils/colors.dart';

class WinningScreen extends StatefulWidget {
  const WinningScreen({
    Key? key,
    required this.level,
    required this.userid,
    required this.qid,
  }) : super(key: key);
  final String level;
  final int userid;
  final int qid;
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
          title: Text("Level ${widget.qid + 1} Completed"),
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: dominantcolor,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Your Correct Answer is A',
                  style: TextStyle(color: textcolor, fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '+100',
                  style: TextStyle(color: primarycolor, fontSize: 17),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 7, right: 7, top: 5, bottom: 5),
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: 80,
                  decoration: BoxDecoration(
                      color: secondarycolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "1200",
                        style: TextStyle(
                            color: textcolor, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.monetization_on,
                        color: primarycolor,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil<void>(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const MyHome(),maintainState: true),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: secondarycolor,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Take a Break",
                            style: TextStyle(color: textcolor, fontSize: 15),
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Next Level",
                            style: TextStyle(color: textcolor, fontSize: 15),
                          )),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
