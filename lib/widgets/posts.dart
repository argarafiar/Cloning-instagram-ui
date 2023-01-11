import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //untuk menghilangkan scroll, karena gridview terdapat dalam listvie jadi scrollnya bertabrakan
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      itemCount: 13,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: NetworkImage(
                  "https://picsum.photos/id/${index + 10}/200/300"),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
