import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nav_drawer/newpage.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/a" : (BuildContext context) => NewPage("New Page")
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Anas Aji Muhammed"),
                accountEmail: new Text("anas.ajeeb"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("AAM"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("D"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Page 1"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
                },
            ),
            new ListTile(
              title: new Text("Page 1"),
              trailing: Icon(Icons.arrow_right),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: Icon(Icons.arrow_downward),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      )
      ,
      body: new Container(
        child: Center(
          child: Text("HomePage"),
        ),
      ),
    );
  }
}

