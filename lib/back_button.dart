import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BackButton extends StatefulWidget {
  @override
  _BackButtonState createState() => _BackButtonState();
}
class _BackButtonState extends State<BackButton> {
  DateTime backbuttonpressedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: WillPopScope (
        onWillPop: onWillPop,
        child: Center (
          child: Text ( 'Double Click to exit app' ),
        ),
      ),
    );
  }

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now ( );
    //Statement 1 Or statement2
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference ( backbuttonpressedTime ) >
            Duration ( seconds: 3 );
    if (backButton) {
      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast (
          msg: "Double Click to exit app",
          backgroundColor: Colors.black,
          textColor: Colors.white );
      return false;
    }
    return true;
  }
}