import 'package:flutter/material.dart';
import 'package:demo0615/tab-list.dart';
import 'package:demo0615/bot-nav-widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'navbar', theme: ThemeData.dark(), home: BotNavWidget());
  }
}
