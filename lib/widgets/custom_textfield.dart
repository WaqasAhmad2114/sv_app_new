import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextField(
    {required String hintText,
      required TextEditingController controller,
      TextStyle? hintStyle,
      required Color color,
      required double height,
      double? hintTextSize,
      bool? makeCompulsoryField,
      required Color borderColour,
      TextAlign? textAlign}) {
  return Container(
    height: height,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
        border: Border.all(color: borderColour)),
    child: Row(
      children: [
        Flexible(
          child: TextField(
            textAlign: textAlign ?? TextAlign.start,
            controller: controller,
            decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: hintTextSize),
                contentPadding: const EdgeInsets.only(left: 15, right: 15),
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hintText),
          ),
        ),
      ],
    ),
  );
}