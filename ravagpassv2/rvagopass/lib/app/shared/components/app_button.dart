import 'package:flutter/material.dart';
import 'package:rvagopass/app/utils/index.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.onPressed,
      this.labelText,
      this.height,
      this.width});
  final void Function() onPressed;
  final String? labelText;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.red,
        //backgroundColor: Colors.white,
        minimumSize: Size(width ?? 200, height ?? 40),
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        labelText ?? 'LabelText',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
