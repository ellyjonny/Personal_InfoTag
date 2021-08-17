import 'package:flutter/material.dart';

class FilledWidget extends StatelessWidget {
  final TextEditingController textfieldController;
  final String lable;

  FilledWidget({
    @required this.textfieldController,
    @required this.lable,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textfieldController,
      decoration: InputDecoration(
        labelText: '$lable',
        labelStyle: TextStyle(color: Colors.black,fontSize: 14),
         border: new UnderlineInputBorder(
        borderSide: new BorderSide(
          color: Colors.white
        )
      )
      ),
    );
  }
}