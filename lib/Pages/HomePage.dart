import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/Story.dart';
import 'package:instagram_ui/Pages/Post.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset('assets/IG_logo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/Icon/add.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/Icon/heart.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/Icon/share.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Story(),
            for (var i = 1; i <= 4; i++)
              Post(
                image: 'assets/Post/post$i.jpg',
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/Icon/Home.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/Icon/Search.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/Icon/Reels.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/Icon/Shop.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage('assets/User/user.jpg'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
