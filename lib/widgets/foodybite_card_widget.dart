import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:foodybite_testapp/widgets/card_tags.dart';

import '../values/values.dart';

class FoodyBiteCard extends StatelessWidget {
  final String imagePath;
  final String cardTitle;
  final String category;
  final String distance;
  final String rating;
  final String address;
  final String status;
  final double tagRadius;
  final bool bookmark;
  final bool isThereStatus;
  final double cardHeight;
  final double width;
  final GestureTapCallback onTap;

  const FoodyBiteCard({
    this.cardHeight = 280.0,
    this.width = 340.0,
    required this.imagePath,
    required this.cardTitle,
    required this.category,
    required this.distance,
    this.rating = "4.5",
    required this.address,
    this.status = "OPEN",
    required this.onTap,
    this.tagRadius = 8.0,
    this.bookmark = false,
    this.isThereStatus = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: cardHeight,
        width: width,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: Stack(
            children: [
              Positioned(
                  child: Image.asset(
                imagePath,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),
              Positioned(
                bottom: 40,
                left: 20,
                child: Row(
                  children: [
                    Text(
                      cardTitle,
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Josefin Sans"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CardTags(
                      title: category,
                      decoration: BoxDecoration(
                        gradient: Gradients.secondaryGradient,
                        boxShadow: const [
                          Shadows.secondaryShadow,
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(tagRadius),
                        ),
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(6),
                    //   decoration: BoxDecoration(
                    //       color: Colors.amber,
                    //       borderRadius: BorderRadius.circular(4)),
                    //   child: Text(category,
                    //       style: TextStyle(
                    //         fontSize: 13,
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.w100,
                    //         fontFamily: "Josefin Sans",
                    //       )),
                    // ),
                    const SizedBox(
                      width: 10,
                    ),
                    CardTags(
                      title: distance,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 132, 141, 255),
                        borderRadius:
                            BorderRadius.all(Radius.circular(tagRadius)),
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(6),
                    //   decoration: BoxDecoration(
                    //       color: Colors.amber,
                    //       borderRadius: BorderRadius.circular(4)),
                    //   child: Text(
                    //     distance,
                    //     style: TextStyle(
                    //       fontSize: 13,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w100,
                    //       fontFamily: "Josefin Sans",
                    //     ),
                    //   ),
                    // )
                    SizedBox(
                      width: 20,
                    ),
                    bookmark
                        ? Container()
                        : Container(
                            width: 40,
                            height: 20,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Positioned(
                                  left: 21,
                                  child: Image.asset(
                                    ImagePath.cardImage1,
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  child: Image.asset(
                                    ImagePath.cardImage2,
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  child: Image.asset(
                                    ImagePath.cardImage1,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Positioned(
                  bottom: 15,
                  left: 20,
                  child: Row(
                    children: [
                      Text(address,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w100,
                            fontFamily: "Josefin Sans",
                          ))
                    ],
                  )),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(status,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Josefin Sans",
                      )),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text("\u2B50 $rating",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Josefin Sans",
                      )),
                ),
              ),
              bookmark
                  ? Positioned(
                      top: (cardHeight / 2) + 16,
                      left: width - 60,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset(ImagePath.activeBookmarksIcon2),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
