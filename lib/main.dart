import 'package:flutter/material.dart';

void main() => runApp(EasyList());

class EasyList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EasyListState();
  }
}

class _EasyListState extends State<EasyList> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Easy List"),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                },
                child: Text("Add Product")),
          ),
          Column(
            children: _products
                .map((element) => Card(
                      child: Column(children: <Widget>[
                        Image.asset('assets/food.jpg'),
                        Text(element)
                      ]),
                    ))
                .toList(),
          )
        ]),
      ),
    );
  }
}
