import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            StoryItem(
              image: 'assets/User/user.jpg',
              title: 'Your Story',
            ),
            StoryItem(
              image: 'assets/User/user1.png',
              title: 'Henrry',
            ),
            StoryItem(
              image: 'assets/User/user2.png',
              title: 'Jeremy',
            ),
            StoryItem(
              image: 'assets/User/user3.png',
              title: 'Noah',
            ),
            StoryItem(
              image: 'assets/User/user4.png',
              title: 'Cassey',
            ),
            StoryItem(
              image: 'assets/User/user5.png',
              title: 'Stevie',
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(2.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [Color(0xffDE0046), Color(0xffF7A34B)],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
