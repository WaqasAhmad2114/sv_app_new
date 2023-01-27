import 'package:flutter/cupertino.dart';

Widget customTitle({
  required String text,
  required Color color,
  required double size,
  fontFamily,
}) {
  return Row(
    children: [
      Text(
        textAlign: TextAlign.start,
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: fontFamily,
        ),
      ),
    ],
  );
}