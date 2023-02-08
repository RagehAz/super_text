import 'package:flutter/material.dart';
import 'c_leading_dot.dart';

class RedDot extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const RedDot({
    @required this.textHeight,
    @required this.labelColor,
    Key key
  }) : super(key: key);
  /// --------------------------------------------------------------------------
  final double textHeight;
  final Color labelColor;
  /// --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    return Container(
      key: const ValueKey<String>('the_red_dot'),
      height: textHeight,
      margin: labelColor == null ?
      EdgeInsets.symmetric(horizontal: textHeight * 0.2)
          :
      EdgeInsets.symmetric(horizontal: textHeight * 0.02),
      alignment: Alignment.topCenter,
      child: Padding(
        padding: labelColor == null ?
        EdgeInsets.only(top: textHeight * 0.2)
            :
        EdgeInsets.only(top: textHeight * 0.05),
        child: LeadingDot.dot(
          dotSize: textHeight * 0.15,
          color: const Color.fromARGB(255, 233, 0, 0),
        ),
      ),
    );

  }
// -----------------------------------------------------------------------------
}
