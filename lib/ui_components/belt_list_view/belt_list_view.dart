import 'package:flutter/cupertino.dart';
import 'package:judo_pocketbook/enums/belt.dart';
import 'package:judo_pocketbook/ui_components/belt_list_view/belt_cell.dart';

class BeltListView extends StatefulWidget {
  final Function(Belt) onCellTapped;

  BeltListView({Key key, this.onCellTapped}) : super(key: key);

  @override
  _BeltListViewState createState() => _BeltListViewState();
}

class _BeltListViewState extends State<BeltListView> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Belt.values.length,
      itemBuilder: (BuildContext context, int index) => new BeltCell(belt: Belt.values[index], onTap: widget.onCellTapped),
      scrollDirection: Axis.horizontal,
    );
  }
}