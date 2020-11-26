
import 'package:judo_pocketbook/enums/belt.dart';

class AJMBook {

  static Map<String, dynamic> techniquesForBelt(Belt belt) {
    switch(belt) {
      case Belt.yellow:
        return yellowBeltTechniques;
      case Belt.orange:
        return orangeBeltTechniques;
      case Belt.green:
        return greenBeltTechniques;
      case Belt.brown:
        return brownBeltTechniques;
      case Belt.black:
        return blackBeltTechniques;
    }
  }

  static const Map<String, dynamic> yellowBeltTechniques = {
    "techniques": [
      {
        "belt_color": "yellow",
        "technique_name": "Ogoshi"
      },
      {
        "belt_color": "yellow",
        "technique_name": "De Ashi"
      },
      {
        "belt_color": "yellow",
        "technique_name": "Osoto Gari"
      },
      {
        "belt_color": "yellow",
        "technique_name": "Ippon Seioi"
      },
    ]
  };
  static const Map<String, dynamic> orangeBeltTechniques = {
    "techniques": [
      {
        "belt_color": "orange",
        "technique_name": "O-Uchi"
      },
      {
        "belt_color": "orange",
        "technique_name": "Ko-Uchi"
      },
      {
        "belt_color": "orange",
        "technique_name": "Koshi Garuma"
      },
      {
        "belt_color": "orange",
        "technique_name": "Ura Nage"
      },
    ]
  };

  static const Map<String, dynamic> greenBeltTechniques = {
    "techniques": [
      {
        "belt_color": "green",
        "technique_name": "Okuri Ashi"
      },
      {
        "belt_color": "green",
        "technique_name": "Hiza Garuma"
      },
      {
        "belt_color": "green",
        "technique_name": "Tai Otoshi"
      },
      {
        "belt_color": "green",
        "technique_name": "Hane Goshi"
      },
    ]
  };
  static const Map<String, dynamic> brownBeltTechniques = {
    "techniques": [
      {
        "belt_color": "brown",
        "technique_name": "Sode TsuriKomi Goshi"
      },
      {
        "belt_color": "brown",
        "technique_name": "Harai Goshi"
      },
      {
        "belt_color": "brown",
        "technique_name": "Uchi Mata"
      },
      {
        "belt_color": "brown",
        "technique_name": "Ko Uchi Makikomi"
      },
    ]
  };

  static const Map<String, dynamic> blackBeltTechniques = {
    "techniques": [
      {
        "belt_color": "black",
        "technique_name": "Full Nage no Kata"
      }
    ]
  };

}