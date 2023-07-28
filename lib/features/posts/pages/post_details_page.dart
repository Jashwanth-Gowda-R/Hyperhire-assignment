import 'package:flutter/material.dart';

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
              // padding: const EdgeInsets.only(
              //   left: 10,
              //   right: 10,
              // ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 17,
                  child: Image.asset('assets/images/leading.png'),
                ),
                title: const Row(
                  children: [
                    Text(
                      '안녕 나 응애 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'Noto Sans',
                      ),
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Colors.lightGreen,
                    ),
                    Text(
                      '1일전',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: 'Noto Sans',
                      ),
                    ),
                  ],
                ),
                subtitle: const Text(
                  '165cm . 53kg',
                  style: TextStyle(
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
                  child: const Text(
                    '팔로우',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
