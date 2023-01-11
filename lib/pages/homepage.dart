import 'package:flutter/material.dart';
import '../widgets/story_public_bar.dart';
import '../widgets/public_posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            color: Colors.black,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            //icon massage instagram
            icon: Icon(Icons.message_outlined),
            color: Colors.black,
            iconSize: 30,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          //===============================================================section story public bar
          StoryPublicBar(),
          Container(
            height: 1,
            color: Colors.grey[300],
          ),

          //===============================================================section popublic posts
          PublicPosts("loremipsum", "lorem", 200, 1000, 500),
          PublicPosts("dokteranime", "Jakarta", 330, 1250, 530),
          PublicPosts("aslisuroboyo", "Surabaya", 100, 130, 40),
          PublicPosts("mobilelegendwtf", "Land of Dawn", 240, 2849, 435),
        ],
      ),
    );
  }
}
