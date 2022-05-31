import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget {
  final String textLabel;
  final TextEditingController controller;
  final Widget suffixIcon;

  const SearchTextFieldWidget(
      {required this.textLabel,
      required this.controller,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: InkWell(onTap: () {}, child: Icon(Icons.search)),
        suffixIcon: suffixIcon,
        labelText: textLabel,
        labelStyle: const TextStyle(
            color: Colors.grey, fontFamily: "Josefin Sans", fontSize: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide:
              BorderSide(color: Colors.grey, width: 0, style: BorderStyle.none),
        ),
        //filled: true,
      ),
    );
  }
}
