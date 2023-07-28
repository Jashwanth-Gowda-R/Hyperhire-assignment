// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyperhire/common/constants/constants.dart';
import 'package:hyperhire/common/widgets/comment_text_field.dart';
import 'package:hyperhire/common/widgets/like_comment_btn.dart';
import 'package:hyperhire/features/posts/widgets/chips.dart';

import 'package:hyperhire/features/posts/widgets/post_details.dart';
import 'package:hyperhire/features/posts/widgets/post_img_section.dart';
import 'package:hyperhire/features/posts/widgets/post_title.dart';
import 'package:hyperhire/features/posts/widgets/user_interactions.dart';

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
        elevation: 0,
        scrolledUnderElevation: 0,
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
          right: 0,
          left: 0,
          bottom: 0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 0,
                ),
                child: const PostTitle(
                  assetPath: 'assets/images/leading.png',
                  title1: "안녕 나 응애",
                  title2: "1일전",
                  subtitle: "165cm . 53kg",
                  btntitle: "팔로우",
                  isBtn: true,
                ),
              ),
              const PostDetails(
                details: AppConst.details,
                mainDetails: AppConst.mainDetails,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 15),
                child: Row(
                  children: [
                    Chips(
                      text: '#2023',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Chips(
                      text: '#TODAYISMONDAY',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Chips(
                      text: '#TOP',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Chips(
                      text: '#POPS!',
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 15),
                child: Row(
                  children: [
                    Chips(
                      text: '#WOW',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Chips(
                      text: '#ROW',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const PostImgSection(
                imgPath: 'assets/images/pant.jpeg',
              ),
              const SizedBox(
                height: 15,
              ),
              const UserInteractionSection(),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 0,
                ),
                child: const PostTitle(
                  assetPath: 'assets/images/leading.png',
                  title1: "안녕 나 응애",
                  title2: "1일전",
                  subtitle: "",
                  btntitle: "팔로우",
                  isBtn: false,
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      left: 85,
                      right: 30,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: AppConst.comment1,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: LikeButton(
                      isComment: true,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 60,
                  right: 0,
                ),
                child: const PostTitle(
                  assetPath: 'assets/images/comment2.png',
                  title1: "ㅇㅅㅇ",
                  title2: "1일전",
                  subtitle: "",
                  btntitle: "팔로우",
                  isBtn: false,
                ),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 140, right: 30),
                    child: RichText(
                      text: const TextSpan(
                        text: AppConst.comment2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 125),
                    child: LikeButton(
                      isComment: false,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const CommentTextField()
            ],
          ),
        ),
      ),
    );
  }
}
