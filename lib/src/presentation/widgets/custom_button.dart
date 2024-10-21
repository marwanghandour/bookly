import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final double elevation;
  final BorderRadius borderRadius; 
  final EdgeInsetsGeometry padding;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.elevation = 2.0,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(8.0),
      bottomRight: Radius.circular(8.0),
    ),
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor, 
        backgroundColor: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        padding: padding,
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
