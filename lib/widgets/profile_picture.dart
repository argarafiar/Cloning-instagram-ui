import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(105 / 2),
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
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300?grayscale"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(100 / 2),
          ),
        ),
      ),
    );
  }
}
