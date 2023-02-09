part of super_text;

class BulletPoints extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const BulletPoints({
    @required this.bulletPoints,
    @required this.boxWidth,
    @required this.textHeight,
    this.centered = false,
    this.textColor = const Color.fromARGB(255, 133, 203, 218),
    this.showBottomLine = true,
    this.appIsLTR = true,
    this.textDirection = TextDirection.ltr,
    this.font,
    Key key
  }) : super(key: key);
  /// --------------------------------------------------------------------------
  final List<String> bulletPoints;
  final double textHeight;
  final double boxWidth;
  final bool centered;
  final Color textColor;
  final bool showBottomLine;
  final bool appIsLTR;
  final TextDirection textDirection;
  final String font;
  /// --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    if (bulletPoints == null || bulletPoints.isEmpty == true){
      return const SizedBox();
    }

    else {

      final double screenWidth = MediaQuery.of(context).size.width;
      final double _boxWidth = boxWidth ?? (screenWidth - 20);

      return Column(
        crossAxisAlignment: centered == true ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: <Widget>[

          /// TEXTS
          ...List.generate(bulletPoints.length, (index){

            return SizedBox(
              width: _boxWidth,
              child: SuperText(
                text: bulletPoints[index],
                margins: 0,
                textHeight: textHeight,
                maxLines: 10,
                centered: centered,
                textColor: textColor,
                italic: true,
                weight: FontWeight.w100,
                leadingDot: true,
                appIsLTR: appIsLTR,
                textDirection: textDirection,
                font: font,
              ),
            );

          }),

          /// BOTTOM LINE
          if (showBottomLine == true)
          Container(
            width: _boxWidth - 20,
            height: 0.5,
            color: textColor,
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),

        ],
      );

    }

  }
  /// --------------------------------------------------------------------------
}
