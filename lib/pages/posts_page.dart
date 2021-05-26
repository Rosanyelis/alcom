import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  static const String routeName = "/posts_page";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
      child: new Text("Anuncios"),
    )));
  }
}
