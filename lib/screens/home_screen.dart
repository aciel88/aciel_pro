import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aciel_pro/sidebar/sidebar_layout.dart';

class HomeScreen extends StatelessWidget {

  final FirebaseUser user;

  HomeScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Custom Navigation Drawer Demo',
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SideBarLayout (
      ),
    );
  }
}