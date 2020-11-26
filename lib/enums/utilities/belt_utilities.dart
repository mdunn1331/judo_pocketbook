import '../belt.dart';

class BeltUtilities {
  static Belt fromString(String value) =>
      Belt.values.firstWhere((e) => e.toString().split('.').last == value.toLowerCase(),
          orElse:() => Belt.yellow);
}