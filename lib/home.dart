import 'package:flutter/material.dart';
import 'package:youtube/layouts/biblioteca.dart';
import 'package:youtube/layouts/em-alta.dart';
import 'package:youtube/layouts/inicio.dart';
import 'package:youtube/layouts/inscricoes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  List<Widget> telas = [
    Inicio(),
    EmAlta(),
    Inscricoes(),
    Biblioteca()
  ];

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
      body: telas[ _indiceAtual ],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            this._indiceAtual = index;
          });
        },
        currentIndex: this._indiceAtual,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            title: Text("Inicio"),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text("Em alta"),
            icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
            title: Text("Inscrições"),
            icon: Icon(Icons.subscriptions)
          ),
          BottomNavigationBarItem(
            title: Text("Biblioteca"),
            icon: Icon(Icons.folder)
          )
        ],
      ),
    );
  }
}
