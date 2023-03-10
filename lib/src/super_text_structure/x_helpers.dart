import 'package:flutter/material.dart';

class HelperMethod {
  /// --------------------------------------------------------------------------

  const HelperMethod();

  /// --------------------------------------------------------------------------
  /// TESTED : WORKS PERFECT
  static EdgeInsets superMargins({dynamic margin}) {

    if (margin == null || margin == 0){
      return EdgeInsets.zero;
    }

    else if (margin.runtimeType == double){
      return EdgeInsets.all(margin);
    }

    else if (margin.runtimeType == int){
      return EdgeInsets.all(margin.toDouble());
    }

    else if (margin.runtimeType == EdgeInsets){
      return margin;
    }

    else {
      return margin;
    }

  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static bool stringIsEmpty(String text){

    if (text == null || text == '' || text.isEmpty == true) {
      return true;
    }

    else {
      return false;
    }

  }
  // --------------------
  static bool checkColorIsBlack(Color color) {
    bool _isBlack = false;

    const Color _black = Color.fromARGB(255, 0, 0, 0);

    if (color != null &&
        color.red == _black.red &&
        color.green == _black.green &&
        color.blue == _black.blue) {
      _isBlack = true;
    }

    return _isBlack;
  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static Alignment superCenterAlignment({
    @required bool appIsLTR,
  }) {
  return appIsLTR == true ?
  Alignment.centerLeft
      :
  Alignment.centerRight;
}
  /// --------------------------------------------------------------------------
}
