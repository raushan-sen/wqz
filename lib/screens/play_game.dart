import 'package:flutter/material.dart';
import 'package:wqz/utils/colors.dart';
import 'package:wqz/widgets/quiz_options.dart';

class GamePlay extends StatefulWidget {
  const GamePlay({
    Key? key,
    required this.id,
    required this.userid,
  }) : super(key: key);

  final int id;
  final int userid;

  @override
  State<GamePlay> createState() => _GamePlayState();
}

class _GamePlayState extends State<GamePlay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(1, 88, 77, 77),
          appBar: AppBar(
            title: Text('Level ' + widget.id.toString()),
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
                  child: const Center(child: Text("2+2+3",style: TextStyle(color: textcolor,fontSize: 30,fontWeight: FontWeight.bold),)),
                  decoration: BoxDecoration(
                      color: secondarycolor,
                      borderRadius: BorderRadius.circular(10)),
                  height: 250,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                ),
              ),
              const SliverPadding(padding: EdgeInsets.only(top: 20)),
              const QuizOptions(option: "5"),
              const SliverPadding(padding: EdgeInsets.only(top: 20)),
              const QuizOptions(option: "6"),
              const SliverPadding(padding: EdgeInsets.only(top: 20)),
              const QuizOptions(option: "7"),
              const SliverPadding(padding: EdgeInsets.only(top: 20)),
              const QuizOptions(option: "4"),
              const SliverPadding(padding: EdgeInsets.only(top: 20)),
              SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed("/winning_screen",arguments: ModalRoute.withName('/'));
                  },
                  child: const Card(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    color: primarycolor,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Submit Answer",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: textcolor, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
