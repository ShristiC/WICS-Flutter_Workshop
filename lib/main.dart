/*
  @author: Shristi Chitlangia
  This will be a food browsing app in which it will go through the basics of developing an app in flutter
*/
import 'package:flutter/material.dart';
import './pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food at UT',
      home: HomePage(),
    );
}}