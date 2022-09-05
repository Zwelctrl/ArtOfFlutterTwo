import 'package:flutter/material.dart';

class TestHome extends StatefulWidget {
  TestHome({Key? key}) : super(key: key);

  @override
  State<TestHome> createState() => _TestHomeState();
}

class _TestHomeState extends State<TestHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Home Page"),),
      body: Column(
        children: [
          TextFormField(
            onChanged: (e){

            },            
          )
        ],
      ),
    );
  }
}