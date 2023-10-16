// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location')),
          ],
        ),
      ),
    );
  }
}
