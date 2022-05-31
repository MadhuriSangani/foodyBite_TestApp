import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/routes/router.gr.dart';

import '../values/values.dart';

class MenuPhotosScreen extends StatelessWidget {
  final double heightForSmallImages = 100.0;
  final double heightForBigImages = 200.0;
  const MenuPhotosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var marginBetweenImages = Sizes.MARGIN_16 * 2;
    var marginAroundEntireScreen = Sizes.MARGIN_16 * 2;
    var widthOfScreen = MediaQuery.of(context).size.width;
    var widthOfSmallImage =
        (widthOfScreen - (marginAroundEntireScreen + marginBetweenImages)) / 3;
    var widthOfLargeImage = (widthOfSmallImage * 2) + 16;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Menu & Photos",
          style: Styles.customTitleTextStyle(
            color: AppColors.headingText,
            fontWeight: FontWeight.w600,
            fontSize: Sizes.TEXT_SIZE_22,
          ),
        ),
        leading: InkWell(
          onTap: () {
            context.router.pop();
          },
          child: Image.asset("assets/images/symbol-5--15.png"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Sizes.MARGIN_14, vertical: Sizes.MARGIN_10),
        child: ListView(children: [
          straightLineImageRow(imageWidth: widthOfSmallImage, context: context),
          SizedBox(
            height: Sizes.MARGIN_14,
          ),
          gridImageRow(
              widthOfSmallImage: widthOfSmallImage,
              widthOfLargeImage: widthOfLargeImage,
              context: context),
          SizedBox(
            height: Sizes.MARGIN_14,
          ),
          straightLineImageRow(imageWidth: widthOfSmallImage, context: context),
          SizedBox(
            height: Sizes.MARGIN_14,
          ),
          fullWidth(width: widthOfScreen, context: context)
        ]),
      ),
    );
  }

  Widget straightLineImageRow({
    required double imageWidth,
    required BuildContext context,
  }) {
    return Row(
      children: createImageRow(
        numberOfImages: 3,
        imageWidth: imageWidth,
        context: context,
      ),
    );
  }

  Widget gridImageRow({
    required double widthOfSmallImage,
    required double widthOfLargeImage,
    required BuildContext context,
  }) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () => navigateToPreviewPhotos(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
                child: Image.asset(
                  ImagePath.avocado,
                  width: widthOfSmallImage,
                  height: heightForSmallImages,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: Sizes.MARGIN_16),
            InkWell(
              onTap: () => navigateToPreviewPhotos(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
                child: Image.asset(
                  ImagePath.strawberries,
                  width: widthOfSmallImage,
                  height: heightForSmallImages,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: Sizes.MARGIN_16),
        InkWell(
          onTap: () => navigateToPreviewPhotos(context),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
            child: Image.asset(
              ImagePath.cake_big,
              width: widthOfLargeImage,
              fit: BoxFit.fitHeight,
              height: heightForBigImages + Sizes.MARGIN_16,
            ),
          ),
        )
      ],
    );
  }

  Widget fullWidth(
      {required width, height = 200.0, required BuildContext context}) {
    return InkWell(
      onTap: () => navigateToPreviewPhotos(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
        child: Image.asset(
          ImagePath.bread_on_tray,
          width: width,
          height: height,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  List<Widget> createImageRow(
      {numberOfImages, imageWidth, required BuildContext context}) {
    List<Widget> images = [];
    List<String> imagePaths = [
      ImagePath.doughnuts,
      ImagePath.dinnerIsServed,
      ImagePath.chinese,
    ];

    List<int> list = List<int>.generate(numberOfImages, (i) => i + 1);

    for (var i in list) {
      images.add(
        InkWell(
          onTap: () => navigateToPreviewPhotos(context),
          child: Container(
            margin: EdgeInsets.only(
                right: (i != numberOfImages) ? Sizes.MARGIN_16 : 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
              child: Image.asset(
                imagePaths[i - 1],
                width: imageWidth,
                height: heightForSmallImages,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      );
    }
    return images;
  }

  void navigateToPreviewPhotos(BuildContext context) {
    context.router.push(PreviewMenuPhotosScreenRoute());
    //AppRouter.navigator.pushNamed(AppRouter.previewMenuPhotosScreen);
  }
}
