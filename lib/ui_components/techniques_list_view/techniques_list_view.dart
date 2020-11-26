import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:judo_pocketbook/enums/belt.dart';
import 'package:judo_pocketbook/models/technique_book_model.dart';
import 'package:judo_pocketbook/ui_components/techniques_list_view/technique_cell.dart';

class TechniquesListView extends StatefulWidget {
  
  TechniquesListView({Key key}) : super(key: key);

  @override
  _TechniquesListViewState createState() => _TechniquesListViewState();

}

class _TechniquesListViewState extends State<TechniquesListView> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TechniqueBookModel>(builder: (context, techniquesBook, child) =>
        Container(
          child:ListView.builder(
            itemBuilder: (BuildContext context, int index) =>TechniqueCell(
                techniqueName: techniquesBook.techniques[index].name,
                belt: techniquesBook.belt
            ),
            itemCount: techniquesBook.techniques.length,
          ),
          color: techniquesBook.belt.beltColor,
        )
    );
  }
}