import 'package:flutter/material.dart';
import '../widgets/profile_picture.dart';
import '../widgets/followers_text.dart';
import '../widgets/name_bio.dart';
import '../widgets/story_bar.dart';
import '../widgets/menu_posts.dart';
import '../widgets/posts.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //untuk shadow bottom
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'username',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Container(
                    height: 500,
                    child: ListView(
                      children: [
                        //buat icon minimize di tengah
                        Container(
                          child: Icon(Icons.minimize_rounded),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.black,
                            size: 30,
                          ),
                          title: Text("Settings"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.access_time,
                            color: Colors.black,
                            size: 30,
                          ),
                          title: Text("your activity"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.timelapse_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text("Files"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.qr_code_scanner,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text("QR Code"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.bookmark_border_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text("Saved"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.format_list_numbered_sharp,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text("Close friend"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.star_border,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text("Favorite"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text("Covid-19 information center"),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //===============================================================section profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //================================================================foto profile
                    ProfilePicture(),
                    //================================================================text follower
                    FollowersText(),
                  ],
                ),

                //===============================================================section nama dan bio
                Namebio(),
                SizedBox(height: 7),

                //===============================================================section Story
                StoryBar(),
                SizedBox(height: 10),
              ],
            ),
          ),

          //===============================================================section menu posts
          MenuPosts(),

          //===============================================================section posts
          Posts()
        ],
      ),
    );
  }
}
