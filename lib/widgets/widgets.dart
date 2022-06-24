import 'package:flutter/material.dart';
import 'package:wqz/screens/play_game.dart';
import 'package:wqz/utils/colors.dart';

class Widget1 extends StatefulWidget {
  const Widget1({
    Key? key,
    required this.userid,
  }) : super(key: key);
  final int userid;
  @override
  State<Widget1> createState() => _Widget1State();
}

bool isCompleted = false;
bool level = false;

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 5,
      children: [
        for (var i = 1; i < 100; i++)
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GamePlay(id: i, userid: widget.userid),
                ),
              );
            },
            child: Card(
              child: Center(
                  child: i==1
                      ? Text(
                          i.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )
                      : IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.lock),
                          color: textcolor,
                        )),
              color: isCompleted
                  ? const Color.fromARGB(255, 13, 196, 84)
                  : const Color.fromARGB(153, 30, 75, 111),
            ),
          ),
      ],
    );
  }
}
