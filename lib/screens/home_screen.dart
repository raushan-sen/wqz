import 'package:flutter/material.dart';
import 'package:wqz/screens/game_screen.dart';
import 'package:wqz/utils/colors.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(1, 88, 77, 77),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  centerTitle: false,
                  title: const Text(
                    'Number Flat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: primarycolor,
                        )),
                    GestureDetector(
                        onTap: (() {}),
                        child: Container(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          margin: const EdgeInsets.only(top: 10,bottom: 10,right: 20),
                          decoration: BoxDecoration(
                              color: secondarycolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: const [
                              Text("1200",style: TextStyle(color: textcolor,fontWeight: FontWeight.w500),),
                              SizedBox(width: 4,),
                              Icon(
                                Icons.monetization_on,
                                color: primarycolor,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
                const SliverPadding(padding: EdgeInsets.all(8)),
                SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/levels');
                    },
                    child: const Card(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      color: secondarycolor,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 1),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.all(18)),
                // level Box Started
                SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MyLevels(level: "Basic", userid: "7"),
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      color: secondarycolor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Basic',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text('Total : 20'),
                            Text('Completed : 08'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Level box Closed
                // level Box Started
                const SliverPadding(padding: EdgeInsets.all(8)),
                SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MyLevels(level: "Medium", userid: "7"),
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      color: secondarycolor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Medium',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text('Total : 60'),
                            Text('Completed : 34'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Level box Closed
                // level Box Started
                const SliverPadding(padding: EdgeInsets.all(8)),
                SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MyLevels(level: "Advanced", userid: "7"),
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      color: secondarycolor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Advanced',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text('Total : 15'),
                            Text('Completed : 12'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Level box Closed
                SliverToBoxAdapter(
                  child: Expanded(
                      child: Container(
                    color: Colors.transparent,
                    height: 100,
                    child: const Center(
                        child: Text("Team Flutify",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1))),
                  )),
                )
              ],
            )));
  }
}
