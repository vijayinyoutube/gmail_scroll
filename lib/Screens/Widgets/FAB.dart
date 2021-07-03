import 'package:flutter/material.dart';

Widget buildFAB() => AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
      width: 50,
      height: 50,
      child: FloatingActionButton.extended(
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(Icons.edit),
        ),
        label: SizedBox(),
      ),
    );
