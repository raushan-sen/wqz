import 'package:flutter/material.dart';

import '../utils/colors.dart';

class QuizOptions extends StatefulWidget {
  const QuizOptions({
    Key? key,
    required this.option,
  }) : super(key: key);
  final String option;
  @override
  State<QuizOptions> createState() => _QuizOptionsState();
}

class _QuizOptionsState extends State<QuizOptions> {
  bool isoptionchoosen = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isoptionchoosen = true;
          });
        },
        child: Container(
          child: Center(
              child: Text(widget.option,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: textcolor, fontSize: 20))),
          decoration: BoxDecoration(
            color: isoptionchoosen ? primarycolor : secondarycolor,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 40,
          margin: const EdgeInsets.only(left: 20, right: 20),
        ),
      ),
    );
  }
}
