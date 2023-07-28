import 'package:flutter/material.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextField(
        maxLines: 1,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: '댓글을 남겨주세요.',
          hintStyle: const TextStyle(
            color: Color.fromRGBO(175, 185, 202, 1),
          ),
          prefixIcon: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/imagesmode.png',
              // alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
      trailing: Container(
        // alignment: Alignment.topLeft,
        child: const Text(
          '등록',
          style: TextStyle(
            color: Color.fromRGBO(175, 185, 202, 1),
          ),
        ),
      ),
    );
  }
}
