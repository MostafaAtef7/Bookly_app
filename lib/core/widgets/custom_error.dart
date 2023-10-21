import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMsg});
  final String errMsg;

  @override
  Widget build(BuildContext context) {
    return Text(errMsg, style: Styles.textStyle18,);
  }
}