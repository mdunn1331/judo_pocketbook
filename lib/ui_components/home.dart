import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:judo_pocketbook/models/enums/belt.dart';
import 'package:judo_pocketbook/ui_components/belt_list_view/belt_list_view.dart';
import 'file:///C:/Users/mdunn/AndroidStudioProjects/judo_pocketbook/lib/ui_components/belt_list_view/belt_cell.dart';
import 'file:///C:/Users/mdunn/AndroidStudioProjects/judo_pocketbook/lib/ui_components/techniques_list_view/technique_cell.dart';
import 'package:judo_pocketbook/ui_components/techniques_list_view/techniques_list_view.dart';

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
        title: Text(
            widget.title,
            style: TextStyle(color: _beltState.alternateColor),
        ),
        backgroundColor: _beltState.beltColor,
        shadowColor: _beltState.beltColor,
      ),
      body:Column (
        children: <Widget>[
          Expanded(
            flex: 1,
            child: BeltListView(onCellTapped:(belt) => setBeltState(belt),),
          ),
          Container(
            height: 1,
            color: _beltState.alternateColor,
          ),
          Expanded(
            flex: 8,
              child:TechniquesListView(selectedBelt: _beltState,)
          )
        ],
      )
    );
  }
}