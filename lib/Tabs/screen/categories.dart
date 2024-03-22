import 'books_list.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Categories",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: categoriesName.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 16 / 15,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print(categoriesName[index]);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BookList(name: categoriesName[index])));
              },
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(categoriesImage[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.3)
                          ],
                          stops: const [0.6, 0.9],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      categoriesName[index],
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

List categoriesName = [
  "Fiction",
  "Classic",
  "Romance",
  "Mystery",
  "Fantasy",
  "History",
  "Comic",
  "Crime",
];

List categoriesImage = [
  "https://img.freepik.com/free-photo/space-travel-collage-design_23-2150163772.jpg?t=st=1711103330~exp=1711106930~hmac=4a0d6a69b53c6fb721d21b0ae584d1414a846b639ab73772d650ec2eeae064ef&w=740",
  "https://images.unsplash.com/photo-1455885661740-29cbf08a42fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2xhc3NpYyUyMGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://img.freepik.com/free-photo/medium-shot-bride-groom-posing-outdoors_23-2150639450.jpg?t=st=1711103462~exp=1711107062~hmac=8c1a8fcacab7e8d3a3203d2c76bfaf8e109bbd870867e5363051cc3260e07d93&w=740",
  "https://img.freepik.com/free-photo/abstract-creative-3d-sphere-with-eye-effect_23-2150885551.jpg?t=st=1711103562~exp=1711107162~hmac=131275d15a411124257f16ca2f6f53b70a3caeaa6f7f2882d744a7e1bf889f03&w=740",
  "https://img.freepik.com/premium-photo/man-stands-front-mountain-sky-is-cloudy_391229-5513.jpg?w=740",
  "https://img.freepik.com/premium-photo/retro-nautical-compass-resting-antique-world-map-ai-generated-art-work_844516-158.jpg?w=740",
  "https://img.freepik.com/premium-vector/illustration-close-up-face-super-happy-person_961307-1160.jpg?w=740",
  "https://img.freepik.com/premium-photo/detective-crime-scene-investigation-photoshoot_950002-75446.jpg?w=826",
];
