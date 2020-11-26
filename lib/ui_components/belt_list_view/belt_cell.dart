import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:judo_pocketbook/enums/belt.dart';

class BeltCell extends StatelessWidget {

  final Belt belt;

  final void Function(Belt) onTap;

  BeltCell({Key key, this.belt, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title:Center(
          child: Text(
            belt.beltName,
            style: TextStyle(color: belt.alternateColor),
          ),
        ),
        onTap: () {
          onTap(belt);
        },
      ),
      color: belt.beltColor,
      width: 100,
    );
  }

}