import 'package:flutter/material.dart';

import '../values/values.dart';

class DarkOverLay extends StatelessWidget {
  final Gradient gradient;
  final double height;
  final double width;

  const DarkOverLay({
    this.gradient = Gradients.fullScreenOverGradient,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Positioned(
      width: this.width,
      height: height,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Container(),
      ),
    );
  }
}
