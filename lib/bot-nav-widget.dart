import 'package:flutter/material.dart';
import './index-list.dart';
import './tab-list.dart';
import './discover.dart';

class BotNavWidget extends StatefulWidget {
  BotNavWidget({Key key}) : super(key: key);

  @override
  _BotNavWidgetState createState() => _BotNavWidgetState();
}

class _BotNavWidgetState extends State<BotNavWidget> {
  final _navColor = Colors.amber;
  int _currentIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() {
    pageList..add(Discover())..add(TabList())..add(IndexList());
    super.initState(); // 调用父类初始化方法
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _navColor),
              title: Text(
                'Home',
                style: TextStyle(color: _navColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages, color: _navColor),
              title: Text(
                'Page',
                style: TextStyle(color: _navColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.book, color: _navColor),
              title: Text(
                'Book',
                style: TextStyle(color: _navColor),
              )),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.person, color: _navColor),
          //     title: Text(
          //       'User',
          //       style: TextStyle(color: _navColor),
          //     ))
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
