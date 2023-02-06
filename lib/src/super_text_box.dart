import 'package:flutter/material.dart';
import 'super_text_helpers.dart';

class SuperTextBox extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const SuperTextBox({
    @required this.onTap,
    @required this.margin,
    @required this.centered,
    @required this.leadingDot,
    @required this.redDot,
    @required this.children,
    @required this.boxWidth,
    @required this.boxHeight,
    @required this.textDirection,
    @required this.appIsLTR,
    @required this.onDoubleTap,
    Key key
  }) : super(key: key);
  /// --------------------------------------------------------------------------
  final Function onTap;
  final dynamic margin;
  final bool centered;
  final bool leadingDot;
  final bool redDot;
  final List<Widget> children;
  final Function onDoubleTap;
  final double boxWidth;
  final double boxHeight;
  final TextDirection textDirection;
  final bool appIsLTR;
  // --------------------------------------------------------------------------
  /// TESTED : WORKS PERFECT
  static MainAxisAlignment _getMainAxisAlignment({
    @required bool centered,
    @required TextDirection textDirection,
    @required bool appIsLTR,
  }){

    if (centered == true){
      return MainAxisAlignment.center;
    }

    else {

      if (textDirection == null){
        return MainAxisAlignment.start;
      }
      else {

        /// APP IS LTR (ENGLISH)
        if (appIsLTR == true){

          if (textDirection == TextDirection.ltr){
            return MainAxisAlignment.start;
          }
          else {
            return MainAxisAlignment.end;
          }

        }

        /// APP IS RTL (ARABIC)
        else {

          if (textDirection == TextDirection.rtl){
            return MainAxisAlignment.start;
          }
          else {
            return MainAxisAlignment.end;
          }


        }

      }

    }

  }
  // --------------------
  /// TESTED : WORKS PERFECT
  static CrossAxisAlignment _getCrossAxisAlignment({
    @required bool redDot,
    @required bool leadingDot,
  }){
    return
      redDot == true ? CrossAxisAlignment.center
          :
      leadingDot == true ? CrossAxisAlignment.center
          :
      CrossAxisAlignment.center;
  }
  // -----------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      key: const ValueKey<String>('SuperTextBox'),
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Center(
        child: Container(
          width: boxWidth,
          height: boxHeight,
          margin: superMargins(margin: margin),
          alignment: Alignment.center,
          // color: Colorz.bloodTest,
          child: Row(
            mainAxisAlignment: _getMainAxisAlignment(
              centered: centered,
              textDirection: textDirection,
              appIsLTR: appIsLTR,
            ),
            crossAxisAlignment: _getCrossAxisAlignment(
              leadingDot: leadingDot,
              redDot: redDot,
            ),
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );

  }
  // -----------------------------------------------------------------------------
}
