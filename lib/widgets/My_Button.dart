import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  const Mybuttons({
    super.key,
    required this.color,
    required this.title,
    required this.onPressed,
  });
  final Color color;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(40),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
