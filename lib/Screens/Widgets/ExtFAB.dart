import 'package:flutter/material.dart';

Widget buildExtendedFAB() => AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
      width: 150,
      height: 50,
      child: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.edit),
        label: Center(
          child: Text(
            "Compose",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
