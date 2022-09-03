import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String? title;
  CustomAppBar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$title"),),
    );
  }
}