enum TechniqueCategory {
  standing,
  ground
}

extension on TechniqueCategory {
  String get japaneseName {
    switch(this) {
      case TechniqueCategory.standing:
        return "Tachi Waza";
      case TechniqueCategory.ground:
        return "Ne Waza";
    }
  }
}