import 'package:flutter/cupertino.dart';
import 'package:judo_pocketbook/models/enums/belt.dart';
import 'package:judo_pocketbook/ui_components/techniques_list_view/technique_cell.dart';

class TechniquesListView extends StatefulWidget {

  Belt selectedBelt;

  TechniquesListView({Key key, this.selectedBelt}) : super(key: key);

  @override
  _TechniquesListViewState createState() => _TechniquesListViewState();

}

class _TechniquesListViewState extends State<TechniquesListView> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child:ListView.builder(
          itemBuilder: (BuildContext context, int index) =>TechniqueCell(
              techniqueName: widget.selectedBelt.beltTechniques[index],
              belt: widget.selectedBelt
          ),
          itemCount: widget.selectedBelt.beltTechniques.length,
        ),
      color: widget.selectedBelt.beltColor,
    );
  }
}