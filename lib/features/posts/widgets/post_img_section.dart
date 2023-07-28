// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PostImgSection extends StatelessWidget {
  const PostImgSection({
    Key? key,
    required this.imgPath,
  }) : super(key: key);
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        imgPath,
        width: double.infinity,
        height: 450,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
