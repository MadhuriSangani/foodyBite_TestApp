import 'package:flutter/material.dart';

import '../values/values.dart';

class FoodyBiteCategoryCard extends StatelessWidget {
  final String imagePath;
  final Gradient gradient;
  final bool hasHandle;
  final double height;
  final double width;
  final String category;
  final GestureTapCallback onTap;

  const FoodyBiteCategoryCard(
      {required this.imagePath,
      required this.gradient,
      this.height = Sizes.HEIGHT_100,
      this.width = Sizes.WIDTH_100,
      this.category = "Italian",
      this.hasHandle = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  height: height,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Opacity(
                opacity: 0.65,
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: gradient,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            Positioned(
              top: hasHandle ? Sizes.SIZE_36 : (height / 2) - 4,
              left: hasHandle ? Sizes.SIZE_8 : width / 4,
              right: hasHandle ? Sizes.SIZE_24 : width / 4,
              child: hasHandle
                  ? Row(
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          category,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "Josefin Sans",
                              fontSize: Sizes.TEXT_SIZE_22,
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Container(
                          width: Sizes.WIDTH_6,
                          height: Sizes.HEIGHT_36,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.51),
                              borderRadius:
                                  BorderRadius.circular(Sizes.RADIUS_30)),
                        ),
                      ],
                    )
                  : Text(
                      category,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Josefin Sans",
                        fontSize: Sizes.TEXT_SIZE_12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
