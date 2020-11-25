import 'package:flutter/cupertino.dart';
import 'package:judo_pocketbook/models/enums/belt.dart';

class TechniqueCell extends StatelessWidget {

  final String techniqueName;
  final Belt belt;

  TechniqueCell({Key key, this.techniqueName, this.belt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          techniqueName,
        style: TextStyle(color: belt.alternateColor),
      ),
      color: belt.beltColor,
      alignment: Alignment.center,
      height: 50,
    );
  }

}