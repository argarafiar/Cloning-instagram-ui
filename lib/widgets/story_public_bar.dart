import 'package:flutter/material.dart';

class StoryPublicBar extends StatelessWidget {
  const StoryPublicBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  //inkwell untuk membuat tampilan menjadi tombol
                  InkWell(
                    borderRadius: BorderRadius.circular(85 / 2),
                    onTap: () {},
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(85 / 2),
                        color: Colors.white,
                        border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 207, 207, 207)),
                      ),
                      child: Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/200/300?grayscale"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(80 / 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Your Story"),
                ],
              ),
            ),
            Story("loremipsum"),
            Story("dokteranime"),
            Story("aslisuroboyo"),
            Story("mobilelegendwtf"),
          ],
        ),
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
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(85 / 2),
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
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/200/300"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(80 / 2),
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
