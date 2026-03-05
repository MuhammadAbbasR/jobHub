import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  String text;
  TextStyle style;

  ReusableText({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.left,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
