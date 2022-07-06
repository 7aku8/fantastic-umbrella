import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText(
  {Key? key, this.size = 30, required this.text, this.color = Colors.black}
      ) :super(key: key);

  final double size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold));
  }
}