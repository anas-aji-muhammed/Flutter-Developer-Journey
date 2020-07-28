import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() {
  runApp(MaterialApp(
    home: Json(),
  ));
}
class Json extends StatefulWidget {
  @override
  _JsonState createState() => _JsonState();
}

class _JsonState extends State<Json> {
  final String url = "https://swapi.dev/api/people";
  List listdata;

  @override
  void initState() {
    super.initState();
    this.getJson();
  }

  Future<String> getJson() async{
    var response = await http.get(
      Uri.encodeFull(url),
    );
    setState(() {
      var convertDatatoJson = json.decode(response.body);
      listdata = convertDatatoJson["results"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Json App"),
      ),
      body: Container(
        child: new ListView.builder(
          itemCount: listdata == null ? 0 : listdata.length ,
            itemBuilder: (BuildContext context, int index){
              return new Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                   new Card(
                      child: Container(
                          child: Text(listdata[index]["name"]),
                        height: 80,
                      ),
                   )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
