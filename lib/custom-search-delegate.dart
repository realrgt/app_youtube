import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //print("resultado: pesquisa realizada");
    close(context, query );
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> sugestions = List();

    if ( query.isNotEmpty ) {

      sugestions = [
        "Android", "Angular", "Web", "MongDB", "Ergito"
      ].where(
          (text) => text.toLowerCase().startsWith( query.toLowerCase() )  // filtering results
      ).toList();
      
      return ListView.builder(
        itemCount: sugestions.length,
        itemBuilder: (context, index){
          
          return ListTile(
            onTap: (){
              close(context, sugestions[index]);
            },
            title: Text( sugestions[index] ),
          );
          
        },
      );

    } else {
      return Center(
        child: Text("Nenhum resultado encontrado"),
      );
    }
    
  }



}