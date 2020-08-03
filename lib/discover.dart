import 'package:flutter/material.dart';
import './index-list.dart';
import './tab-list.dart';

class Discover extends StatelessWidget {
  const Discover({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          'discover',
          style: TextStyle(fontSize: 30.0),
        ),
        backgroundColor: Colors.orangeAccent,
        // leading: Container(), // TIPS: appbar居中（ios默认居中，android居左）
        elevation: 0.0, // TIPS: appbar底部阴影
      ),
      body: Column(
        children: <Widget>[
          MaterialButton(
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 64.0,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return IndexList();
              }));
            },
          ),
          MaterialButton(
            child: Text(
              '跳转1',
              style: TextStyle(fontSize: 30.0),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return TabList();
              }));
            },
          )
        ],
      ),
    );
  }
}
