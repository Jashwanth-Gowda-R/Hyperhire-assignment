
import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({
    Key? key,
    required this.details,
    required this.mainDetails,
  }) : super(key: key);

  final String details;

  final String mainDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(
        left: 25,
        right: 20,
      ),
      child: RichText(
        text: TextSpan(
          text: mainDetails,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 14,
            fontFamily: 'Noto Sans',
          ),
          children: [
            TextSpan(
              text: details,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontFamily: 'Noto Sans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
