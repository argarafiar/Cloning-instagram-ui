import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Story("Friends"),
          Story("Family"),
          Story("Work"),
          Story("Foods"),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                //inkwell untuk membuat tampilan menjadi tombol
                InkWell(
                  borderRadius: BorderRadius.circular(75 / 2),
                  onTap: () {},
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75 / 2),
                      color: Colors.white,
                      border: Border.all(
                          width: 2, color: Color.fromARGB(255, 207, 207, 207)),
                    ),
                    child: Center(
                      child: Icon(Icons.add, size: 40),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text("New"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  Story(this.judul);

  final String judul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(75 / 2),
            onTap: () {},
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75 / 2),
                color: Colors.grey[300],
              ),
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://picsum.photos/seed/picsum/200/300"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(70 / 2),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(this.judul),
        ],
      ),
    );
  }
}
