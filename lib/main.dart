import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(EasyList());

class EasyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Easy List"),
          ),
          body: ProductManager('Food Tester')),
    );
  }
}
