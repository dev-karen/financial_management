import 'package:flutter/material.dart';

class UIText extends StatelessWidget {
  const UIText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
