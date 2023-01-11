import 'package:flutter/material.dart';

class PublicPosts extends StatelessWidget {
  PublicPosts(
      this.username, this.location, this.idImage, this.likes, this.comments);

  final String username;
  final String location;
  final int idImage;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAboutBar(username, location),
        PostImage(idImage),
        IconBar(),
        DescriptionBar(username, likes, comments),
      ],
    );
  }
}

//=============================================section post description
class DescriptionBar extends StatelessWidget {
  DescriptionBar(this.username, this.likes, this.comments);

  final String username;
  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "${this.likes} Likes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(height: 5),
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: username + " ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text:
                        " Lorem ipsum dolor sit amet, consectetur adipiscing elit is simply dummy text... ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "View more",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(height: 5),
                Text(
                  "View ${this.comments} comments",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(height: 5),
                Text(
                  "1 day ago",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//===============================================================section post icon
class IconBar extends StatelessWidget {
  const IconBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              iconSize: 32,
              padding: EdgeInsets.only(right: 20),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_outlined),
              iconSize: 32,
              padding: EdgeInsets.only(right: 20),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
              iconSize: 32,
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border),
              iconSize: 32,
            ),
          ],
        ),
      ),
    );
  }
}

//===============================================================section post image
class PostImage extends StatelessWidget {
  PostImage(this.id);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/id/${id}/200/300"),
          fit: BoxFit.cover,
        ),
      ),
      //print id param
    );
  }
}

//===============================================================section user about bar
class UserAboutBar extends StatelessWidget {
  UserAboutBar(this.username, this.location);

  final String username;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfilePictureBar(),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Spacer(),
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
                              Icons.send_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                            title: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "We've scanned a few things! ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "See where to share, link, and save",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            trailing: Icon(Icons.close),
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey[300],
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.star_border,
                              color: Colors.black,
                              size: 30,
                            ),
                            title: Text("add to favorites"),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.person_remove_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            title: Text("Stop following"),
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey[300],
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
                              Icons.info_outline_rounded,
                              size: 30,
                              color: Colors.black,
                            ),
                            title: Text("Why you see this"),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.visibility_off_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            title: Text("Hide"),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.person_pin_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            title: Text("about this account"),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.report_gmailerrorred_rounded,
                              size: 30,
                              color: Colors.red,
                            ),
                            title: Text(
                              "Report",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.more_vert),
              color: Colors.black,
              iconSize: 25,
            ),
          ],
        ),
      ),
    );
  }
}

//===============================================================section profile picture bar
class ProfilePictureBar extends StatelessWidget {
  const ProfilePictureBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45 / 2),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.amber,
          ],
        ),
      ),
      child: Center(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300?grayscale"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(40 / 2),
          ),
        ),
      ),
    );
  }
}
