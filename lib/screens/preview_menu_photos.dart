import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';

final List<String> images = [
  ImagePath.doughnuts,
  ImagePath.dinnerIsServed,
  ImagePath.chinese,
  ImagePath.cake_big,
  ImagePath.strawberries,
  ImagePath.black_berries,
  ImagePath.bread_on_tray,
];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

final List child = map<Widget>(
  images,
  (index, i) {
    return Container(
      child: Image.asset(
        i,
        fit: BoxFit.cover,
        width: 1000,
      ),
    );
  },
).toList();

class PreviewMenuPhotosScreen extends StatefulWidget {
  PreviewMenuPhotosScreen({Key? key}) : super(key: key);

  @override
  State<PreviewMenuPhotosScreen> createState() =>
      _PreviewMenuPhotosScreenState();
}

class _PreviewMenuPhotosScreenState extends State<PreviewMenuPhotosScreen> {
  get callbackFunction => null;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kFoodyBiteDarkBackground,
      appBar: AppBar(
        backgroundColor: AppColors.kFoodyBiteDarkBackground,
        elevation: 0.0,
        leading: InkWell(
          onTap: () => context.router.pop(),
          child: Image.asset(
            ImagePath.arrowBackIcon,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          StringConst.PREVIEW,
          style: Styles.customTitleTextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_20,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 700.0,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: images.map((child) {
                    return Builder(builder: (BuildContext context) {
                      return Card(
                        color: AppColors.kFoodyBiteDarkBackground,
                        child: Image.asset(
                          child,
                          fit: BoxFit.fitHeight,
                        ),
                      );
                    });
                  }).toList(),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(
                    images,
                    (index, url) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? AppColors.secondaryElement
                              : AppColors.kFoodyBiteUnselectedSliderDot,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
