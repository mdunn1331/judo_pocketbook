import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:judo_pocketbook/enums/belt.dart';
import 'package:judo_pocketbook/models/technique_book_model.dart';
import 'package:judo_pocketbook/ui_components/belt_list_view/belt_list_view.dart';
import 'package:judo_pocketbook/ui_components/techniques_list_view/techniques_list_view.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TechniqueBookModel techniqueBookModel = context.watch<TechniqueBookModel>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(color: techniqueBookModel.belt.beltColor),
          ),
          backgroundColor: techniqueBookModel.belt.beltColor,
          shadowColor: techniqueBookModel.belt.beltColor,
        ),
        body:Column (
          children: <Widget>[
            Expanded(
              flex: 1,
              child: BeltListView(onCellTapped:(belt) => techniqueBookModel.setBelt(belt)),
            ),
            Container(
              height: 1,
              color: techniqueBookModel.belt.alternateColor,
            ),
            Expanded(
                flex: 8,
                child:TechniquesListView()
            )
          ],
        )
    );
  }

  // @override
  // _BeltState createState() => _BeltState();
}

// class _BeltState extends State<HomePage> {
//   Belt _beltState = Belt.yellow;
//
//   void setBeltState(Belt newBeltColor) {
//     setState(() {
//       _beltState = newBeltColor;
//     });
//   }
// }