part of super_text;

class BulletPoints extends StatelessWidget {
  /// --------------------------------------------------------------------------
  const BulletPoints({
    @required this.bulletPoints,
    @required this.boxWidth,
    this.centered,
    this.textColor = const Color.fromARGB(255, 133, 203, 218),
    this.showBottomLine = true,
    this.appIsLTR = true,
    this.textDirection = TextDirection.ltr,
    Key key
  }) : super(key: key);
  /// --------------------------------------------------------------------------
  final List<String> bulletPoints;
  final double boxWidth;
  final bool centered;
  final Color textColor;
  final bool showBottomLine;
  final bool appIsLTR;
  final TextDirection textDirection;
  /// --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    if (bulletPoints == null || bulletPoints.isEmpty == true){
      return const SizedBox();
    }

    else {

      return Column(
        crossAxisAlignment: centered == true ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: <Widget>[

          /// TEXTS
          ...List.generate(bulletPoints.length, (index){

            return SizedBox(
              width: boxWidth,
              child: SuperText(
                text: bulletPoints[index],
                margins: 0,
                // size: 2,
                maxLines: 10,
                centered: centered,
                textColor: textColor,
                italic: true,
                weight: FontWeight.w100,
                leadingDot: true,
                appIsLTR: appIsLTR,
                textDirection: textDirection,
              ),
            );

          }),

          /// BOTTOM LINE
          if (showBottomLine == true)
          Container(
            width: boxWidth - 20,
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