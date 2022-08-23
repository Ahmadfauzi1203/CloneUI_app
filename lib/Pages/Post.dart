import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/User/user.jpg'),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Aziiee22',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/Icon/more.png'),
                )
              ],
            ),
          ),
          Image.asset(
            image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/Icon/heart.png'),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/Icon/comment.png')),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/Icon/share.png')),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/Icon/bookmark.png'))
                  ],
                ),
                const Text(
                  '345 Likes',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Aziiee22',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/User/user.jpg'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Add Comment...'),
                        ),
                      ),
                      const Spacer(),
                      Image.asset('assets/Icon/love.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/Icon/sad.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/Icon/add_circle.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
