import 'package:flutter/material.dart';

class Mybuttonssignin extends StatelessWidget {
  const Mybuttonssignin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90, right: 90),
      child: Material(
        elevation: 5,
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(40),
        child: MaterialButton(
          onPressed: () => {},
          minWidth: 200,
          height: 50,
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
