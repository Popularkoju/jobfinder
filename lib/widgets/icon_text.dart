// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icons;
  final String text;
  // ignore: use_key_in_widget_constructors
  const IconText(this.icons, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icons,
        color: Colors.amber,
      ),
      SizedBox(
        width: 18,
      ),
      Text(text, style: TextStyle(fontSize: 10, color: Colors.grey))
    ]);
  }
}
