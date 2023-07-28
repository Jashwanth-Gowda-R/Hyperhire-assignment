import 'package:flutter/material.dart';

class UserInteractionSection extends StatelessWidget {
  const UserInteractionSection({
    super.key,
  });

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
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
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
          ),
          const Padding(
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
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.bookmark_outline,
              color: Color.fromRGBO(175, 185, 202, 1),
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.more_horiz,
              color: Color.fromRGBO(175, 185, 202, 1),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
