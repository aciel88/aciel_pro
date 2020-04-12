import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/1.png',
      title: 'This is our title',
      description: 'test'
  ),
  Slide(
      imageUrl: 'assets/images/2.png',
      title: 'This is our title',
      description: 'test'
  ),
  Slide(
      imageUrl: 'assets/images/3.png',
      title: 'This is our title',
      description: 'test'
  ),
];
