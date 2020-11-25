import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:judo_pocketbook/models/enums/belt.dart';

class BeltCell extends StatelessWidget {

  final Belt belt;

  BeltCell({Key key, this.belt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          belt.beltName,
          style: TextStyle(color: belt.alternateColor),
        ),
      ),
      color: belt.beltColor,
      alignment: Alignment.center,
      height: 50,
      width: 100,
    );
  }

}