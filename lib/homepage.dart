import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:personal_infotag/models/statusbar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('../assets/persona.jpg'),
            ),
          ),
          Column(
            children: [
              Text('Elias John'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatusBar(
                    name: "Followers",
                    count: "12.4K",
                    seticon: Icons.verified,
                  ),
                  StatusBar(
                    name: "Following",
                    count: "1789",
                    seticon: Icons.radio,
                  ),
                  StatusBar(
                    name: "Post",
                    count: "1000",
                    seticon: Icons.icecream,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
