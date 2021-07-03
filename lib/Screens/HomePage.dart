import 'package:flutter/material.dart';

import 'Widgets/ExtFAB.dart';
import 'Widgets/FAB.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(100, (i) => "Item $i");
  ScrollController _scrollController = new ScrollController();
  bool isFAB = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50) {
        setState(() {
          isFAB = true;
        });
      } else {
        setState(() {
          isFAB = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  double animationValue = 10;
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildListView(),
      floatingActionButton: isFAB ? buildFAB() : buildExtendedFAB(),
    );
  }

  AppBar buildAppBar() => AppBar(
        title: Text("Gmail Scroll - FAB Animation"),
      );

  Widget buildListView() => ListView.builder(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      );
}
