import 'package:flutter/cupertino.dart';
import 'package:judo_pocketbook/baked_in_data/ajm_book.dart';
import 'package:judo_pocketbook/enums/belt.dart';
import 'package:judo_pocketbook/factories/technique_factory.dart';
import 'package:judo_pocketbook/models/technique.dart';


class TechniqueBookModel extends ChangeNotifier {
  List<Technique> _techniques;
  Belt _selectedBelt;
  TechniqueBookModel({Belt startingBelt}) : _selectedBelt = startingBelt, _techniques = TechniqueFactory.techniques(AJMBook.techniquesForBelt(startingBelt));

  Belt get belt => _selectedBelt;
  List<Technique> get techniques => _techniques;

  void setBelt(Belt belt) {
    _selectedBelt = belt;
    _techniques = TechniqueFactory.techniques(AJMBook.techniquesForBelt(belt));
    notifyListeners();
  }
}