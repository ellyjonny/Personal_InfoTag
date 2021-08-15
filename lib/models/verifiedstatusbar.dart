import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VerifiedStatusBar extends StatelessWidget {
  final String name;
  final String count;
  var seticon;
  VerifiedStatusBar(
      {@required this.name, @required this.count, @required this.seticon});

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
          Icon( seticon,
            size: 12,
            color: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}
