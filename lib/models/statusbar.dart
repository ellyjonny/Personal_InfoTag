import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  final String name;
  final String count;
  var seticon;
  StatusBar(
      {@required this.name, @required this.count, @required this.seticon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text(
            '$name: ',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Text('$count',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          Icon( seticon,
            size: 12,
            color: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}
