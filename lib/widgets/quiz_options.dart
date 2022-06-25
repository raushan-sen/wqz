import 'package:flutter/material.dart';
import '../utils/colors.dart';

class QuizOptions extends StatefulWidget {
  const QuizOptions({
    Key? key,
    // required this.json,
  }) : super(key: key);
  // final  json;
  @override
  State<QuizOptions> createState() => _QuizOptionsState();
}

var a = ["1", "4", "5", "6"];

class _QuizOptionsState extends State<QuizOptions> {
  bool isoptionAchoosen = false;
  bool isoptionBchoosen = false;
  bool isoptionCchoosen = false;
  bool isoptionDchoosen = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // first option
        GestureDetector(
          onTap: () {
            setState(() {
              isoptionAchoosen = true;
              isoptionBchoosen = false;
              isoptionCchoosen = false;
              isoptionDchoosen = false;
            });
          },
          child: Container(
            child: Center(
                child: Text(a[0],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: textcolor, fontSize: 20))),
            decoration: BoxDecoration(
              color: isoptionAchoosen ? primarycolor : secondarycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            margin: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),

        // second option
        GestureDetector(
          onTap: () {
            setState(() {
              isoptionAchoosen = false;
              isoptionBchoosen = true;
              isoptionCchoosen = false;
              isoptionDchoosen = false;
            });
          },
          child: Container(
            child: Center(
                child: Text(a[1],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: textcolor, fontSize: 20))),
            decoration: BoxDecoration(
              color: isoptionBchoosen ? primarycolor : secondarycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            margin: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),

        // third option
        GestureDetector(
          onTap: () {
            setState(() {
              isoptionAchoosen = false;
              isoptionBchoosen = false;
              isoptionCchoosen = true;
              isoptionDchoosen = false;
            });
          },
          child: Container(
            child: Center(
                child: Text(a[2],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: textcolor, fontSize: 20))),
            decoration: BoxDecoration(
              color: isoptionCchoosen ? primarycolor : secondarycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            margin: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),

        // forth option
        GestureDetector(
          onTap: () {
            setState(() {
              isoptionAchoosen = false;
              isoptionBchoosen = false;
              isoptionCchoosen = false;
              isoptionDchoosen = true;
            });
          },
          child: Container(
            child: Center(
                child: Text(a[3],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: textcolor, fontSize: 20))),
            decoration: BoxDecoration(
              color: isoptionDchoosen ? primarycolor : secondarycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 40,
            margin: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }
}
