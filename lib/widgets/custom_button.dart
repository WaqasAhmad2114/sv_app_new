import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container customButton({
  bool? optionalNavigateIcon,
  required double margin,
  required double width,
  required String title,
  required Color color,
  required Color textColor,
  required double height,
  required Color borderColour,
  required Function()? onPress,
  required TextAlign? titleTextAlign,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
      onTap: onPress,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: margin),
              child: Text(
                textAlign: titleTextAlign,
                title,
                style: TextStyle(
                    color: textColor, fontSize: 13, fontFamily: 'medium'),
              ),
            ),
          ),
          optionalNavigateIcon == true
              ? Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.white,
                  ),
                )
              : Container()
        ],
      ),
    ),
  );
}
