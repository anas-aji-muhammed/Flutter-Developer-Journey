import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Swipe to Delete"),
      ),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new Dismissible(
            background: Container(
              color: Colors.deepOrange,
            ),
              key: new Key(items[index]),
              child: new ListTile(
                title: Text(items[index]),
              ),
            onDismissed: (direction){
                setState(() {
                  items.removeAt(index);
                });
                Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text(items[index] + " Dismissed"))
                );

            },
          );
        },
      ),
    );
  }
}
