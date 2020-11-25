import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:judo_pocketbook/models/enums/belt.dart';
import 'package:judo_pocketbook/ui_components/belt_cell.dart';
import 'package:judo_pocketbook/ui_components/technique_cell.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BeltState createState() => _BeltState();
}

class _BeltState extends State<HomePage> {
  Belt _beltState = Belt.white;

  void setBeltState(Belt newBeltColor) {
    setState(() {
      _beltState = newBeltColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Column (
        children: <Widget>[
          Container(
            child: ListView.builder(
              itemCount: Belt.values.length,
              itemBuilder: (BuildContext context, int index) => new BeltCell(belt: Belt.values[index]),
              scrollDirection: Axis.horizontal,
            ),
            height: 50,
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          Expanded(
              child: ListView(
                children: <Widget>[
                  TechniqueCell(
                      techniqueName: "Test State",
                      belt: _beltState
                  )
                ],
              ),
          )
        ],
      )
    );
  }
}