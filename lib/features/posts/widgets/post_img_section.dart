import 'package:flutter/material.dart';

class PostImgSection extends StatelessWidget {
  const PostImgSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        'assets/images/pant.jpeg',
        width: double.infinity,
        height: 450,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
