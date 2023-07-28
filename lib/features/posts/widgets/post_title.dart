// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  const PostTitle({
    Key? key,
    required this.assetPath,
    required this.title1,
    required this.title2,
    required this.subtitle,
    required this.btntitle,
    required this.isBtn,
  }) : super(key: key);
  final String assetPath;
  final String title1;
  final String title2;
  final String subtitle;
  final String btntitle;
  final bool isBtn;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: isBtn ? 17 : 25,
        child: Image.asset(assetPath),
      ),
      title: Row(
        children: [
          Text(
            title1,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Noto Sans',
            ),
          ),
          const Icon(
            Icons.check_circle,
            color: Color.fromRGBO(1, 185, 159, 1),
          ),
          Text(
            title2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
              fontFamily: 'Noto Sans',
            ),
          ),
        ],
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontFamily: 'Roboto',
        ),
      ),
      trailing: isBtn
          ? ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color.fromRGBO(1, 185, 159, 1),
              ),
              child: Text(
                btntitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.more_horiz,
                color: Color.fromRGBO(175, 185, 202, 1),
                size: 30,
              ),
            ),
    );
  }
}
