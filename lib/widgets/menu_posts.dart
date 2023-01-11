import 'package:flutter/material.dart';

class MenuPosts extends StatelessWidget {
  const MenuPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
            child: Icon(
              Icons.grid_on_sharp,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
        Expanded(
          child: Icon(
            Icons.person_pin_outlined,
            color: Colors.black,
            size: 25,
          ),
        ),
      ],
    );
  }
}
