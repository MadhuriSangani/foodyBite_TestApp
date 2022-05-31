import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodybite_testapp/widgets/ratings_widget.dart';

import '../values/data.dart';
import '../values/values.dart';
import '../widgets/potbelly_button.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double initialSliderValue = 10;

  int ratingValue = 4;

  int activeButtonValue = 1;

  TextStyle buttonTextStyle =
      Styles.customNormalTextStyle(fontWeight: FontWeight.w600);

  TextStyle subTitleTextStyle = Styles.customTitleTextStyle(
    color: AppColors.headingText,
    fontWeight: FontWeight.w600,
    fontSize: Sizes.TEXT_SIZE_20,
  );

  TextStyle lightTextStyle = Styles.customNormalTextStyle(
    color: AppColors.accentText,
    fontSize: Sizes.TEXT_SIZE_16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Filter",
          style: TextStyle(
              color: Color(0xFF222455),
              fontFamily: "Josefin Sans",
              fontSize: 27),
        ),
        leading: InkWell(
          onTap: () {
            context.router.pop();
          },
          child: Image.asset("assets/images/symbol-5--15.png"),
        ),
        actions: [
          InkWell(
            onTap: () {
              context.router.pop();
            },
            child: Image.asset("assets/images/close_icon.png"),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 8, right: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Select Category",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Sizes.TEXT_SIZE_28,
                            color: Color.fromARGB(255, 34, 36, 85),
                            fontFamily: "Josefin Sans"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runAlignment: WrapAlignment.spaceBetween,
                    children: createCategoryButtons(numberOfButtons: 9),
                  ),
                  // Container(
                  //   //height: MediaQuery.of(context).size.height,
                  //   height: 400,
                  //   child: GridView.builder(
                  //       itemCount: 8,
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 3),
                  //       itemBuilder: (context, index) {
                  //         return category_filter(
                  //           categoryTitle: category[index],
                  //         );
                  //       }),
                  // )
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Distance (km)",
                        style: subTitleTextStyle,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: AppColors.purpleShade1,
                          activeTrackColor: AppColors.secondaryElement,
                          trackHeight: 8,
                          valueIndicatorColor: AppColors.secondaryElement,
                          showValueIndicator:
                              ShowValueIndicator.onlyForContinuous,
                          valueIndicatorTextStyle: TextStyle(),
                          thumbColor: AppColors.secondaryElement,
                          thumbShape: RetroSliderThumbShape(thumbRadius: 0),
                        ),
                        child: Slider(
                          min: 0,
                          max: 100,
                          value: initialSliderValue,
                          onChanged: (value) {
                            setState(() {
                              initialSliderValue = value;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 24),
                            child: Text(
                              '0',
                              style: lightTextStyle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 24),
                            child: Text(
                              '100',
                              style: lightTextStyle,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RatingsBar(
                    hasSubtitle: false,
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              PotbellyButton('Reset',
                  buttonWidth: (MediaQuery.of(context).size.width / 2) - 0.25,
                  buttonHeight: 60,
                  decoration: Decorations.customHalfCurvedButtonDecoration(
                    topleftRadius: Sizes.RADIUS_24,
                  ),
                  buttonTextStyle: buttonTextStyle,
                  onTap: () {}),
              IntrinsicHeight(
                child: VerticalDivider(
                  width: 0.5,
                  thickness: 1,
                ),
              ),
              PotbellyButton('Apply',
                  buttonWidth: (MediaQuery.of(context).size.width / 2) - 0.25,
                  buttonHeight: 60,
                  decoration: Decorations.customHalfCurvedButtonDecoration(
                      topRightRadius: Sizes.RADIUS_24),
                  buttonTextStyle: buttonTextStyle,
                  onTap: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget categoryButton({
    required String buttonTitle,
    required int index,
    Color backgroundColor = AppColors.primaryColor,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Sizes.MARGIN_12),
      child: InkWell(
        onTap: () => setState(() => activeButtonValue = index),
        child: PotbellyButton(
          buttonTitle,
          buttonWidth: 100,
          buttonHeight: 50,
          decoration: index == activeButtonValue
              ? Decorations.categoryButtonDecoration
              : BoxDecoration(
                  color: backgroundColor,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(Sizes.RADIUS_8),
                  ),
                ),
          buttonTextStyle: Styles.customNormalTextStyle(
            color: index == activeButtonValue
                ? AppColors.primaryColor
                : AppColors.accentText,
            fontSize: Sizes.TEXT_SIZE_16,
          ),
          onTap: () {},
        ),
      ),
    );
  }

  createCategoryButtons({@required numberOfButtons}) {
    List<Widget> categoryButtons = <Widget>[];
    List<String> buttonTitles = [
      "Italian",
      "Chinese",
      "Mexican",
      "Thai",
      "Arabian",
      "Indian",
      "American",
      "Korean",
      "European",
    ];

    List<int> list = List<int>.generate(numberOfButtons, (i) => i + 1);

    for (var i in list) {
      categoryButtons
          .add(categoryButton(buttonTitle: buttonTitles[i - 1], index: i));
    }
    return categoryButtons;
  }
}

// class category_filter extends StatelessWidget {
//   final String categoryTitle;
//
//   const category_filter({
//     required this.categoryTitle,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: CupertinoButton(
//           color: Colors.blue,
//           //color: Colors.blue,
//           child: Text(
//             categoryTitle,
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: Sizes.TEXT_SIZE_20,
//                 color: Colors.red,
//                 fontFamily: "Josefin Sans"),
//           ),
//           onPressed: () {}),
//     );
//   }
// }

class RetroSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;

  const RetroSliderThumbShape({
    this.thumbRadius = 6.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    String sliderValue = (value * 100).toInt().toString();
    final Canvas canvas = context.canvas;
    final paint = Paint()
      ..style = PaintingStyle.fill
//      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..color = AppColors.secondaryElement;
//labelPainter.text ="kk";

    final borderPaint = Paint()
      ..color = AppColors.purpleShade1
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(center.dx, center.dy);

    var width = 28;
    var midWidth = width / 2;
    var height = 50;
    var midHeight = height / 2;
    var crown = 84;
    var midCrown = crown - crown / 5;

    //open legs of thumb
    path.lineTo(center.dx - midWidth, center.dy - midHeight);

    //startPoint1 for bezier curve
    //path.moveTo(center.dx - midWidth, center.dy - midHeight);
    var endPoint1 = Offset(center.dx - midWidth, center.dy - midCrown);
    var controlPoint1 = Offset(center.dx - width, center.dy - height);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

//    //startPoint2 for bezier curve
//    path.moveTo(center.dx - midWidth ,center.dy- midCrown);
    var endPoint2 = Offset(center.dx + midWidth, center.dy - midCrown);
    var controlPoint2 = Offset(center.dx, center.dy - crown);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    //startPoint3 for bezier curve
//    path.moveTo(center.dx + midWidth , center.dy - midCrown);
    var endPoint3 = Offset(center.dx + midWidth, center.dy - midHeight);
    var controlPoint3 = Offset(center.dx + width, center.dy - height);
    path.quadraticBezierTo(
        controlPoint3.dx, controlPoint3.dy, endPoint3.dx, endPoint3.dy);

    path.lineTo(center.dx, center.dy);
    canvas.drawPath(path, paint);
    canvas.drawPath(path, borderPaint);

    TextSpan span = TextSpan(
      style: Styles.customNormalTextStyle(color: AppColors.white),
      text: sliderValue,
    );
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(
        canvas,
        Offset(
            center.dx - calculateOffset(sliderValue), center.dy - height - 4));
  }
}

int calculateOffset(String value) {
  if (value.length == 1) {
    return 4;
  } else if (value.length == 2) {
    return 8;
  } else {
    return 12;
  }
}
