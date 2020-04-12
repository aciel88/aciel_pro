import 'package:flutter/material.dart';
import 'package:aciel_pro/navigation_bloc/navigation_bloc.dart';

class QnAPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "QnA",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}