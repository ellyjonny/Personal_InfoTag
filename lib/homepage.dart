import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:personal_infotag/models/statusbar.dart';
import 'package:personal_infotag/models/verifiedstatusbar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("../assets/madeinblack.jpg"))),
        child: Stack(children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    height: 150,
                  ),
                  Container(
                    color: Colors.white,
                    height: 150,
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 16),
                        Column(
                          children: [
                            Text(
                              'Elias John',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                VerifiedStatusBar(
                                  name: "Followers",
                                  count: "12.4K",
                                  seticon: Icons.verified,
                                ),
                                StatusBar(
                                  name: "Following",
                                  count: "1789",
                                ),
                                StatusBar(
                                  name: "Post",
                                  count: "1000",
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('../assets/persona.jpg'),
              ),
            ),
          ),
        ]));
  }
}
