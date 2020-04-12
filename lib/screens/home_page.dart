import 'package:aciel_pro/screens/reservation_page.dart';
import 'package:flutter/material.dart';
import 'package:aciel_pro/navigation_bloc/navigation_bloc.dart';

void main() {
  runApp(Home());
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class Home extends StatelessWidget {
  DateTime currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () async {
          bool result = onPressBackButton();
          return await Future.value(result);
        },
        child: HomePage(),
      ),
    );
  }

  bool onPressBackButton() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      scaffoldKey.currentState
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content: Text("Tap back again to leave."),
        ));
      return false;
    }
    return true;
  }
}

class HomePage extends StatelessWidget with NavigationStates {
  BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;

    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('예약하기', style: TextStyle(fontSize: 40)),
              onPressed: () => Navigator.of(context).pushNamed(Reservation.routeName),
              color: Colors.green,
              textColor: Colors.white,

            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }

  void showMessage(String msg) {
    final snackbar = SnackBar(content: Text(msg));

    scaffoldKey.currentState
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}