import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MyLevels extends StatefulWidget {
  // final gamename;
  const MyLevels({
    Key? key,
    required this.level,
    required this.userid,
  }) : super(key: key);
  final String level;
  final String userid;
  @override
  State<MyLevels> createState() => _MyLevelsState();
}

class _MyLevelsState extends State<MyLevels> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(1, 88, 77, 77),
          title: Text(widget.level.toString()),
          centerTitle: true,
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: Widget1(userid: int.fromEnvironment(widget.userid),level:widget.level.toString(),),
            )
          ],
        ),
      ),
    );
  }
}
