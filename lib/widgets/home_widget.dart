import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../utils/colors.dart';

class MyHomewidget extends StatefulWidget {
  const MyHomewidget({Key? key}) : super(key: key);
  @override
  State<MyHomewidget> createState() => _MyHomewidgetState();
}

class _MyHomewidgetState extends State<MyHomewidget> {
  // final user = FirebaseAuth.instance.currentUser;
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
                    'Welcome',
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
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20),
                          decoration: BoxDecoration(
                              color: secondarycolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: const [
                              Text(
                                "1200",
                                style: TextStyle(
                                    color: textcolor,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4,
                              ),
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
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/levels');
                    },
                    child: Card(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      color: secondarycolor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("G",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: primarycolor,
                                )),
                                SizedBox(width: 10,),
                            Text(
                              "Sign With Google",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  letterSpacing: 1),
                              textAlign: TextAlign.center,
                            ),
                          ],
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
                              const MyLevels(level: "Basic", userid: "1"),
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
                            Text('Total : 20',style: TextStyle(color: butttoncolor),),
                            Text('Completed : 08',style: TextStyle(color: butttoncolor)),
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
                              const MyLevels(level: "Medium", userid: "1"),
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
                            Text('Total : 60',style: TextStyle(color: butttoncolor)),
                            Text('Completed : 34',style: TextStyle(color: butttoncolor)),
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
                            Text('Total : 15',style: TextStyle(color: butttoncolor)),
                            Text('Completed : 12',style: TextStyle(color: butttoncolor)),
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
