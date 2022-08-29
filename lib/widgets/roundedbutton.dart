import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, 
    required this.text, 
    this.vertical = 16, 
    this.horizontal = 30, 
    required this.onTap,
  }) : super(key: key);

  final String text;
  final double vertical;
  final double horizontal;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.grey.shade200
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold)
      )
    );
  }
}