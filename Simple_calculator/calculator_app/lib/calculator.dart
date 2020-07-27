import 'package:flutter/material.dart';

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  var num1=0,num2=0,sum=0;

  void Add(){
    setState(() {
      num1=int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void sub(){
    setState(() {
      num1=int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void mul(){
    setState(() {
      num1=int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void div(){
    setState(() {
      num1=int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum=num1~/num2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Calculator"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Output: $sum"),
          new TextFormField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              hintText: "Enter num1"
            ),
            controller: t1,
          ),
          new TextFormField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
                hintText: "Enter num1"
            ),
            controller: t2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded
                  (child: RaisedButton(
                    onPressed: (){
                      Add();
                    },
                  child: Text("+"),
                    ),
                ),
                Expanded
                  (child: RaisedButton(
                  onPressed: (){
                    sub();
                  },
                  child: Text("-"),
                ),
                ),
                Expanded
                  (child: RaisedButton(
                  onPressed: (){
                    div();
                  },
                  child: Text("/"),
                ),
                ),
                Expanded
                  (child: RaisedButton(
                  onPressed: (){
                    mul();
                  },
                  child: Text("*"),
                ),
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
