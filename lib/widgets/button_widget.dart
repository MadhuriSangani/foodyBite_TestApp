import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({required this.buttonName, required this.onPress});

  final String buttonName;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SizedBox(
          height: 60,
          width: double.infinity,
          child: CupertinoButton(
              color: Colors.deepPurpleAccent,
              child: Text(buttonName),
              onPressed: onPress)),
    );
  }
}
