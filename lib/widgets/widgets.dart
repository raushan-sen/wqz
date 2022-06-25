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

bool isCompleted = false;

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 5,
      children: [
        for (var i = 1; i < gamedata["Levels"]![widget.level]!.length + 1; i++)
        
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamePlay(
                          userid: widget.userid, id: i, level: widget.level),
                    ),
                  );
                },
                child: Card(
                  child: Center(
                      child: i ==1
                              // userdata["public"]![widget.userid]
                              //         ["Games Played"]![widget.level]![
                              //     "unlocked"][i-1]["ID"]
                          ? Text(
                              i.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          : IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.lock),
                              color: butttoncolor,
                            )),
                  color: i==1
                          // userdata["public"]![widget.userid]
                          //         ["Games Played"]![widget.level]!["Completed"]
                          //     [i-1]["ID"]
                      ? const Color.fromARGB(255, 13, 196, 84)
                      : const Color.fromARGB(153, 30, 75, 111),
                ),
              ),
      ],
    );
  }
}
