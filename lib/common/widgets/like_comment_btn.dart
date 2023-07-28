// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
    required this.isComment,
  }) : super(key: key);

  final bool isComment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.favorite_border,
              color: Color.fromRGBO(175, 185, 202, 1),
              size: 23,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 2,
              left: 2,
            ),
            child: Text(
              '5',
              style: TextStyle(
                color: Color.fromRGBO(175, 185, 202, 1),
                fontFamily: 'Roboto',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          isComment
              ? const SizedBox(
                  width: 5,
                )
              : Container(),
          isComment
              ? GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/off.png',
                    color: const Color.fromRGBO(
                      175,
                      185,
                      202,
                      1,
                    ),
                  ),
                )
              : Container(),
          isComment
              ? const Padding(
                  padding: EdgeInsets.only(
                    top: 2,
                    // left: 2,
                  ),
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Color.fromRGBO(175, 185, 202, 1),
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
