import 'package:flutter/material.dart';

class FollowersText extends StatelessWidget {
  const FollowersText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextFoll(13, "Posts"),
        TextFoll(512, "Followers"),
        TextFoll(212, "Following"),
      ],
    );
  }
}

class TextFoll extends StatelessWidget {
  TextFoll(this.num, this.text);

  final int num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            num.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(text),
        ],
      ),
    );
  }
}
