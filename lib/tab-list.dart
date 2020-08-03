import 'package:flutter/material.dart';
import 'package:indexed_list_view/indexed_list_view.dart';
import 'dart:math';

class TabList extends StatelessWidget {
  static IndexedScrollController controller = IndexedScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'tablist',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.lightBlue,
        // leading: Container(), // TIPS: appbar居中（ios默认居中，android居左）
        elevation: 0.0, // TIPS: appbar底部阴影
      ),
      body: Column(children: [
        Tabar(),
        Expanded(
          child: IndexedListView.builder(
            controller: controller,
            itemBuilder: itemBuilder(),
          ),
        ),
      ]),
    );
  }

  Function itemBuilder() {
    //
    final List<double> heights = new List<double>.generate(
        527, (i) => Random().nextInt(200).toDouble() + 30.0);

    return (BuildContext context, int index) {
      //
      return Card(
        child: Container(
          height: heights[index % 527],
          color: (index == 0) ? Colors.red : Colors.green,
          child: Center(child: Text('ITEM $index')),
        ),
      );
    };
  }
}

class Tabar extends StatelessWidget {
  const Tabar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          child: Text(
            'tab1',
            style: TextStyle(color: Color.fromRGBO(255, 150, 150, 1)),
          ),
          onPressed: () => {},
        ),
        FlatButton(
          child: Text('tab2'),
          onPressed: () => {},
        ),
        FlatButton(
          child: Text('tab3'),
          onPressed: () => {},
        ),
      ],
    );
  }
}

class TabContent extends StatelessWidget {
  final int index;
  const TabContent({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 60),
      color: Colors.amber,
      child: Text('$index'),
    );
  }
}
