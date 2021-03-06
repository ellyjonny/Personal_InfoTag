import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatusBar extends StatelessWidget {
  final String name;
  final String count;

  StatusBar({@required this.name, @required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$name: ',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Text('$count',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
