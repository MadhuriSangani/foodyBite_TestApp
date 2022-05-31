import 'package:flutter/material.dart';

class HeadingRow extends StatelessWidget {
  final String title;
  final String number;
  final GestureTapCallback onTapOfNumber;
  const HeadingRow({
    required this.title,
    required this.number,
    required this.onTapOfNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontFamily: "Josefin Sans"),
          ),
          InkWell(
            onTap: onTapOfNumber,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Text(
                number,
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                    fontFamily: "Josefin Sans"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
