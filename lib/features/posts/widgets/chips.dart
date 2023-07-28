import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: const Color.fromRGBO(247, 248, 250, 1),
      padding: const EdgeInsets.all(0),
      label: Text(
        text,
        style: const TextStyle(
          color: Color.fromRGBO(90, 107, 135, 1),
          fontSize: 12,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
