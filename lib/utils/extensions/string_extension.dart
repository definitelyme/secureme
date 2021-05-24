import 'package:inflection3/inflection3.dart' as _l1;
import 'package:intl/intl.dart';

extension StringX on String {
  /// Capitalize only first letter in string
  ///
  /// Example: your name => Your name
  String capitalizeFirst() =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  /// Checks if String contains b (Treating or interpreting upper- and lowercase letters as being the same).
  bool caseInsensitiveContains(String b) =>
      toLowerCase().contains(b.toLowerCase());

  /// Checks if String contains b or b contains String (Treating or interpreting upper- and lowercase letters as being the same).
  bool containsAny(String b) {
    var lowA = toLowerCase();
    var lowB = b.toLowerCase();
    return lowA.contains(lowB) || lowB.contains(lowA);
  }

  /// Erase occurrence of strings matching Patterns
  String erase(List<Pattern> patterns,
      {bool recursive = true,
      Direction position = Direction.left,
      int startIndex = 0}) {
    var init = this;
    patterns.forEach((pattern) {
      if (pattern.toString().isEmpty) return;

      if (caseInsensitiveContains('$pattern')) {
        if (recursive) {
          init = replaceAll(pattern, '');
        } else {
          switch (position) {
            case Direction.left:
              init = replaceFirst(RegExp('$pattern'), '', indexOf(pattern));
              break;
            case Direction.right:
              init = replaceFirst(RegExp('$pattern'), '', lastIndexOf(pattern));
              break;
            case Direction.none:
            default:
              assert(!startIndex.isNegative && !(startIndex > length - 1));
              init = replaceFirst(RegExp('$pattern'), '', startIndex);
              break;
          }
        }
      }
    });
    return init;
  }

  NumberFormat asCurrencyFormat() =>
      NumberFormat('#,##0.00', Intl.defaultLocale);

  String pad([String pad = '', Direction start = Direction.right]) {
    switch (start) {
      case Direction.left:
        return '$pad${this}';
      case Direction.right:
        return '${this}$pad';
      case Direction.none:
      default:
        return '$pad${this}$pad';
    }
  }

  String padIf(
      [bool condition = true,
      String pad = '',
      Direction position = Direction.right]) {
    if (condition) return this.pad(pad, position);
    return this;
  }

  /// Returns string in currency format
  ///
  /// Example: 50000 => 50,000
  String asCurrency() => asCurrencyFormat().format(int.parse(this));

  /// Returns only the First character of every word matching _**[pattern]**_ separated by _**[separator]**_
  String onlyInitials({Pattern pattern = ' ', String glue = '.'}) {
    if (trim().isEmpty) return this;
    var split = this.split(pattern);
    var join = split.fold<String>(
        '',
        (previousValue, element) =>
            '$previousValue${element.substring(0, 1)}$glue');
    return join.erase([glue], recursive: false, position: Direction.right);
  }

  /// Checks if string consist only numeric.
  /// Numeric only doesn't accepting '.' which double data type have
  static bool isNumericOnly(String s) => RegExp(r'^\d+$').hasMatch(s);

  String pluralize([int quantity = 2, String? value]) {
    assert(quantity >= 0);
    switch (quantity) {
      case 0:
        return _l1.convertToSingular('${value ?? this}');
      case 1:
        return _l1.convertToSingular('${value ?? this}');
      case 2:
      default:
        return _l1.convertToPlural(this);
    }
  }

  /// Extract numeric value of string
  /// Example: OTP 12312 27/04/2020 => 1231227042020ß
  /// If firstword only is true, then the example return is '12312'
  /// (first found numeric word)
  static String numericOnly(String s, {bool firstWordOnly = false}) {
    var numericOnlyStr = '';
    for (var i = 0; i < s.length; i++) {
      if (isNumericOnly(s[i])) numericOnlyStr += s[i];
      if (firstWordOnly && numericOnlyStr.isNotEmpty && s[i] == ' ') break;
    }
    return numericOnlyStr;
  }

  String get first => '${this[0]}';

  String replaceRandom() {
    return split('').asMap().entries.map((e) {
      final check1 = RegExp(r'[A-Za-z0-9][@][A-Za-z]{1}')
              .stringMatch(this)
              ?.caseInsensitiveContains(e.value) ??
          false;

      final check2 = RegExp(r'\.[A-Za-z]+$')
              .stringMatch(this)
              ?.caseInsensitiveContains(e.value) ??
          false;

      if (e.value.isNotEmpty &&
          e.key != 0 &&
          e.key != 1 &&
          !check1 &&
          !check2) {
        return e.value.replaceFirst(e.value, '.');
      }
      return e.value;
    }).join();
  }

  String removeNewLines() => replaceAll('\n', ' ');
}

enum Direction {
  none,
  left,
  right,
}
