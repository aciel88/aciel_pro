import 'package:aciel_pro/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import'./screens/getting_started_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations ( [DeviceOrientation.portraitUp] )
      .then ((_) {
    runApp (MyApp());
  });
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GettingStartedScreen(),
        routes:{
          LoginScreen.routeName: (ctx) => LoginScreen(),
        }
    );
  }
}