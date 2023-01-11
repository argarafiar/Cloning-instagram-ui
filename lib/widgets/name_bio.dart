import 'package:flutter/material.dart';

class Namebio extends StatelessWidget {
  const Namebio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          "Username",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
        ),
        SizedBox(height: 5),
        Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the"),
        Text(
          "Lorem Ipsum dolor",
          style: TextStyle(color: Colors.blue[900]),
        ),
        SizedBox(height: 10),
        //button edit full width
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Edit Profile",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
