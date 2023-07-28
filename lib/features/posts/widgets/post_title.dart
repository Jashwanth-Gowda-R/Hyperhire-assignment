import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  const PostTitle({
    Key? key,
    required this.assetPath,
    required this.title1,
    required this.title2,
    required this.subtitle,
    required this.btntitle,
  }) : super(key: key);
  final String assetPath;
  final String title1;
  final String title2;
  final String subtitle;
  final String btntitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 17,
        child: Image.asset(assetPath),
      ),
      title: Row(
        children: [
          Text(
            title2,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Noto Sans',
            ),
          ),
          const Icon(
            Icons.check_circle,
            color: Colors.lightGreen,
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
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.lightGreen,
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
      ),
    );
  }
}
