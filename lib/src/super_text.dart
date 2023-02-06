part of super_text;

class SuperText extends StatelessWidget {
  // --------------------------------------------------------------------------
  const SuperText({
    /// TEXT
    @required this.text,
    this.highlight,
    /// SCALES
    this.boxWidth,
    this.boxHeight,
    this.lineHeight = 50,
    this.maxLines = 1,
    this.margins,
    this.lineThickness = 0.5,
    /// SPACING
    this.wordSpacing,
    this.letterSpacing,
    /// COLORS
    this.textColor = const Color.fromARGB(255, 255, 255, 255),
    this.boxColor,
    this.highlightColor = const Color.fromARGB(100, 255, 0, 0),
    this.lineColor,
    /// WEIGHT
    this.weight,
    /// STYLE
    this.font,
    this.italic = false,
    this.shadows,
    this.line,
    this.lineStyle = TextDecorationStyle.solid,
    /// DOTS
    this.leadingDot = false,
    this.redDot = false,
    /// DIRECTION
    this.centered = true,
    this.textDirection,
    this.appIsLTR = false,
    /// GESTURES
    this.onTap,
    this.onDoubleTap,

    this.package,
    /// KEY
    Key key,
  }) : super(key: key);
  // --------------------------------------------------------------------------
  /// TEXT
  final String text;
  final ValueNotifier<dynamic> highlight;
  /// SCALES
  final double boxWidth;
  final double boxHeight;
  final double lineHeight;
  final int maxLines;
  final dynamic margins;
  final double lineThickness;
  /// SPACING
  final double wordSpacing;
  final double letterSpacing;
  /// COLORS
  final Color textColor;
  final Color boxColor;
  final Color highlightColor;
  final Color lineColor;
  /// WEIGHT
  final FontWeight weight;
  /// STYLE
  final String font;
  final bool italic;
  final List<Shadow> shadows;
  final TextDecoration line;
  final TextDecorationStyle lineStyle;
  /// DOTS
  final bool leadingDot;
  final bool redDot;
  /// DIRECTION
  final bool centered;
  final TextDirection textDirection;
  final bool appIsLTR;
  /// GESTURES
  final Function onTap;
  final Function onDoubleTap;

  final String package;
  // -----------------------------------------------------------------------------

  /// ALIGNMENT

  // --------------------
  static TextAlign getTextAlign({
    @required bool centered,
  }) {
    return centered == true ? TextAlign.center : TextAlign.start;
  }
    // -----------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    if (text == null){
      return const SizedBox();
    }

    else {

      return SuperTextBox(
        boxWidth: boxWidth,
        boxHeight: boxHeight,
        onTap: onTap,
        margin: margins,
        centered: centered,
        leadingDot: leadingDot,
        redDot: redDot,
        onDoubleTap: onDoubleTap,
        appIsLTR: appIsLTR,
        textDirection: textDirection,
        children: <Widget>[

          if (leadingDot == true)
            LeadingDot(
              lineHeight: lineHeight,
              color: textColor,
            ),

          TextBuilder(
            text: text,
            maxLines: maxLines,
            centered: centered,
            lineHeight: lineHeight,
            labelColor: boxColor,
            highlight: highlight,
            highlightColor: highlightColor,
            textDirection: textDirection,
            style: createTextStyle(
              /// DUNNO
              // inherit: inherit,
              // debugLabel: debugLabel,
              // locale: locale,
              package: package,
              /// FONT
              fontFamily: font,
              // fontFeatures: fontFeatures,
              // fontFamilyFallback: fontFamilyFallback,
              /// COLOR
              color: textColor,
              // backgroundColor: backgroundColor, /// NO NEED
              /// SIZE
              lineHeight: lineHeight,
              /// WEIGHT
              fontWeight: weight,
              /// SPACING
              letterSpacing: letterSpacing,
              wordSpacing: wordSpacing,
              /// STYLE
              fontStyle: italic == true ? FontStyle.italic : FontStyle.normal,
              textBaseline: TextBaseline.alphabetic,
              shadows: shadows,
              overflow: TextOverflow.ellipsis,
              /// DECORATION
              decorationColor: lineColor,
              decoration: line,
              decorationStyle: lineStyle,
              decorationThickness: lineThickness,
              /// PAINTS
              // foreground: foreground,
              // background: background,
            ),
          ),

          if (redDot == true)
            RedDot(
              lineHeight: lineHeight,
              labelColor: boxColor,
            ),

        ],
      );

    }

  }
  // -----------------------------------------------------------------------------
}

/// PLAN : ADD SELECTABLE TEXT FEATURE IN A PARAMETER IN SUPER TEXT
/*


//             SelectableText(
//               text,
//               toolbarOptions: const ToolbarOptions(
//                 selectAll: true,
//                 copy: true,
//               ),
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colorz.white255,
//                 fontFamily: Words.bodyFont(context),
//                 fontStyle: FontStyle.italic,
//                 decoration: TextDecoration.none,
//                 fontSize: MediaQuery.of(context).size.height * 0.02,
//                 letterSpacing: 0.75,
//               ),
//             ),

 */
