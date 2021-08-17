import 'package:flutter/material.dart';
import 'package:personal_infotag/homepage.dart';
import 'package:personal_infotag/models/roundedbutton.dart';
import 'package:personal_infotag/models/textfilledwidget.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var _fnameEditingController;
  var _lnameEditingController;
  var _unameEditingController;
  var _locationEditingController;

  @override
  void initState() {
    _fnameEditingController = TextEditingController();
    _lnameEditingController = TextEditingController();
    _unameEditingController = TextEditingController();
    _locationEditingController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _fnameEditingController.dispose();
    _lnameEditingController.dispose();
    _unameEditingController.dispose();
    _locationEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("../assets/sunflower.jpg"))),
      child: Stack(
        children: [
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ], color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                FilledWidget(
                    textfieldController: _fnameEditingController,
                    lable: 'Firstname'),
                SizedBox(height: MediaQuery.of(context).size.height / 64),
                FilledWidget(
                    textfieldController: _lnameEditingController,
                    lable: 'Lastname'),
                SizedBox(height: MediaQuery.of(context).size.height / 64),
                FilledWidget(
                    textfieldController: _unameEditingController,
                    lable: 'Username'),
                SizedBox(height: MediaQuery.of(context).size.height / 64),
                FilledWidget(
                    textfieldController: _locationEditingController,
                    lable: 'Location'),
                SizedBox(height: MediaQuery.of(context).size.height / 32),
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: ButtonWidget(
                      buttontext: 'Save',
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Homepage()));
                      }),
                )
              ]),
            ),
          ))
        ],
      ),
    ));
  }
}
