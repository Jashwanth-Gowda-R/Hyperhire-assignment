// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
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
  final String mainDetails = '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?\n';

  final String details = '''\n지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???

올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~! ''';

  final String comment1 = '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~!''';

  final String comment2 = '''오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다''';
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
              PostDetails(
                details: details,
                mainDetails: mainDetails,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Chips(
                      text: '#2023',
                    ),
                    Chips(
                      text: '#TODAYISMONDAY',
                    ),
                    Chips(
                      text: '#TOP',
                    ),
                    Chips(
                      text: '#POPS!',
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 85, right: 30),
                    child: RichText(
                      text: TextSpan(
                        text: comment1,
                        style: const TextStyle(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 140, right: 30),
                    child: RichText(
                      text: TextSpan(
                        text: comment2,
                        style: const TextStyle(
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
