import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../utils/colors.dart';

class QuizOptions extends StatefulWidget {
  const QuizOptions({
    Key? key,
    required this.level,
    required this.userid,
    required this.id,
    required this.gamefordata,
    required this.correctanswer,
  }) : super(key: key);
  final String level;
  final int userid;
  final int id;
  final List gamefordata;
  final String correctanswer;
  @override
  State<QuizOptions> createState() => _QuizOptionsState();
}

class _QuizOptionsState extends State<QuizOptions> {
  bool isoptionchoosen = false;
  int iscorrect = -1;
  _isSelected(int index) {
    setState(() {
      iscorrect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.gamefordata.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: ListTile(
              selected: false,
              onTap: () {
                if (widget.gamefordata[index] == widget.correctanswer) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => WinningScreen(
                              level: widget.level,
                              userid: widget.userid,
                              qid: widget.id))));
                } else {
                  _isSelected(index);
                }
              },
              minVerticalPadding: 20,
              textColor: iscorrect != null && iscorrect == index
                  ? errortextcolor
                  : textcolor,
              tileColor: iscorrect != null && iscorrect == index
                  ? errorbgcolor
                  : secondarycolor,
              title: Text(
                "${widget.gamefordata[index]}",
              ),
            ),
          );
        });
  }
}
