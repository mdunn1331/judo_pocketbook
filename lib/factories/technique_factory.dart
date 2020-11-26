import 'package:judo_pocketbook/models/technique.dart';

class TechniqueFactory {

  static List<Technique> techniques(Map<String, dynamic> techniqueMap) {
    assert(techniqueMap != null);
    assert(techniqueMap.isNotEmpty);
    List<Map<String, dynamic>> techniqueSubMap = techniqueMap["techniques"];
    List<Technique> builtTechniques = [];
    assert(techniqueSubMap != null);
    techniqueSubMap.forEach((techniqueMap) { builtTechniques.add(Technique.fromJson(techniqueMap)); });
    return builtTechniques;
  }
}