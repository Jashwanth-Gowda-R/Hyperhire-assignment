// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyperhire/features/posts/widgets/post_title.dart';

class PostDetailsPage extends StatefulWidget {
  const PostDetailsPage({super.key});

  @override
  State<PostDetailsPage> createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: 24,
        ),
        title: const Text('자유톡'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            iconSize: 24,
            color: Colors.grey,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 5,
                right: 0,
              ),
              child: const PostTitle(
                assetPath: 'assets/images/leading.png',
                title1: "안녕 나 응애 ",
                title2: "1일전",
                subtitle: "165cm . 53kg",
                btntitle: "팔로우",
              ),
            )
          ],
        ),
      ),
    );
  }
}
