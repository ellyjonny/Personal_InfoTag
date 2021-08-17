import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttontext;
  final Function onPress;

  ButtonWidget({@required this.buttontext, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('$buttontext',
          style: TextStyle(
              fontSize: 12,
              color: Color(0xFF03A9F4),
              fontWeight: FontWeight.bold)),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0x000000)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Color(0xFF03A9F4),width: 2))),
          padding:
              MaterialStateProperty.all(EdgeInsets.all(15))),
      onPressed: this.onPress,
    );
  }
}