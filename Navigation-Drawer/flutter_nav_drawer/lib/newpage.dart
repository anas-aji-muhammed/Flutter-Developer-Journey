import 'package:flutter/material.dart';
class NewPage  extends StatelessWidget {
  String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text(title),
      ),
      body: new Center(
        child: Text(title),
      ),
    );
  }
}
