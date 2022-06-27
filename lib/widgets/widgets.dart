import 'package:flutter/material.dart';
import 'package:wqz/screens/play_game.dart';
import 'package:wqz/utils/colors.dart';
import '../models/models.dart';

class Widget1 extends StatefulWidget {
  const Widget1({
    Key? key,
    required this.level,
    required this.userid,
  }) : super(key: key);
  final String level;
  final int userid;
  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {

  _check(index, List list) {
    if (list.contains(index)) {
      return true;
    } else {
      return false;
    }
  }

  _givelength(length) {
    try {
      return length;
    } on Exception catch (_) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 5,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GamePlay(
                      userid: widget.userid, id: index, level: widget.level),
                ),
              );
            },
            child: Card(
              child: Center(
                  child: _check(
                          gamedata["Levels"]![widget.level]![index]["ID"],
                          userdata["public"]![widget.userid]
                              ["Games Played"]![widget.level]!["unlocked"])
                      ? Text(
                          gamedata["Levels"]![widget.level]![index]["ID"]
                              .toString(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )
                      : IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.lock),
                          color: butttoncolor,
                        )),
              color: _check(
                      gamedata["Levels"]![widget.level]![index]["ID"],
                      userdata["public"]![widget.userid]
                          ["Games Played"]![widget.level]!["Completed"])
                  ? const Color.fromARGB(255, 13, 196, 84)
                  : const Color.fromARGB(153, 30, 75, 111),
            ),
          );
        }, childCount: _givelength(gamedata["Levels"]![widget.level]!.length)));
  }
}
