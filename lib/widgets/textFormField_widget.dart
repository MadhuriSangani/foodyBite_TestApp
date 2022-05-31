import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
   TextFormFieldWidget({required this.labelName, required this.iconName,required this.controller});

  TextEditingController controller;

  final String labelName;
  final Icon iconName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(57, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: TextFormField(
            controller: controller,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                labelText: labelName,
                labelStyle: const TextStyle(color: Colors.white),
                border: InputBorder.none,
                icon: iconName)),
      ),
    );
  }
}
