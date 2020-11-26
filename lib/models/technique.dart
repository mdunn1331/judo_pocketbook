import 'package:flutter/cupertino.dart';
import 'package:judo_pocketbook/enums/belt.dart';
import 'package:judo_pocketbook/enums/technique_category.dart';
import 'package:judo_pocketbook/enums/utilities/belt_utilities.dart';

class Technique {
  TechniqueCategory category;
  Image image;
  String name;
  String foreignName;
  String description;
  Belt belt;

  Technique({this.name, this.belt, this.foreignName = "", this.description = ""});

  Technique.fromJson(Map<String, dynamic> json) :
        belt = BeltUtilities.fromString(json['belt_color']),
        name = json['technique_name'];
}