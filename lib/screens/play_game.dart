import 'package:flutter/material.dart';
import 'package:wqz/models/data_for_game.dart';
import 'package:wqz/screens/winnig_screen.dart';
import 'package:wqz/utils/colors.dart';
import 'package:wqz/widgets/quiz_options.dart';

class GamePlay extends StatefulWidget {
  const GamePlay({
    Key? key,
    required this.id,
    required this.level,
    required this.userid,
  }) : super(key: key);

  final int id;
  final String level;
  final int userid;

  @override
  State<GamePlay> createState() => _GamePlayState();
}

class _GamePlayState extends State<GamePlay> {
  // String options=gamedata["Levels"]![widget.level]![widget.id-1]["Option A"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(1, 88, 77, 77),
          appBar: AppBar(
            title: Text("Level ${widget.id+1}"),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              const SliverPadding(
                padding: EdgeInsets.all(8),
              ),
              SliverToBoxAdapter(
                child: Container(
                  child: Center(
                      child: Text(
                    gamedata["Levels"]![widget.level]![widget.id]
                            ["Question"]
                        .toString(),
                    style: const TextStyle(
                        color: textcolor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                      color: secondarycolor,
                      borderRadius: BorderRadius.circular(10)),
                  height: 250,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                ),
              ),
              const SliverPadding(padding: EdgeInsets.only(top: 20)),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    QuizOptions(
                      level: widget.level,
                      gamefordata: [
                        gamedata["Levels"]![widget.level]![widget.id]
                            ["Option A"],
                        gamedata["Levels"]![widget.level]![widget.id]
                            ["Option B"],
                        gamedata["Levels"]![widget.level]![widget.id]
                            ["Option C"],
                        gamedata["Levels"]![widget.level]![widget.id]
                            ["Option D"]
                      ],
                      correctanswer:
                          gamedata["Levels"]![widget.level]![widget.id]
                                  ["Correct Option"]
                              .toString(),
                      id: widget.id,
                      userid: widget.userid,
                    )
                  ],
                ),
              ),
              
            ],
          )),
    );
  }
}




// const SliverPadding(padding: EdgeInsets.only(top: 20)),
//               SliverToBoxAdapter(
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => WinningScreen(
//                                   userid: widget.userid,
//                                   qid: widget.id,
//                                   level: widget.level,
//                                 )));
//                   },
//                   child: const Card(
//                     margin: EdgeInsets.only(left: 20, right: 20),
//                     color: primarycolor,
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Text(
//                         "Submit Answer",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: textcolor, fontSize: 20),
//                       ),
//                     ),
//                   ),
//                 ),
//               )