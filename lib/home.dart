import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam
            ),
            onPressed: (){
              print("Video action");
            },
          ),
          IconButton(
            icon: Icon(
                Icons.search
            ),
            onPressed: (){
              print("Search action");
            },
          ),
          IconButton(
            icon: Icon(
                Icons.account_circle
            ),
            onPressed: (){
              print("Account action");
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
