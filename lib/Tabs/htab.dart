// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import '../widgets/search_container.dart';
import '../widgets/section_heading.dart';
import '../widgets/categories.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
List<Book> books = [];
void searchBooks(String query) async {
  const apiKey = 'AIzaSyC8xfhvOeif8--qEjRcdwo7zoeje1y0E90';
  final url =
      'https://www.googleapis.com/books/v1/volumes?q=${Uri.encodeQueryComponent(query)}&key=$apiKey';

  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    // Successful request
    final data = jsonDecode(response.body);
    final List<dynamic> items = data['items'];
    books = items.map((item) => Book.fromJson(item)).toList();
    print('Request success');
    // Process the response data
  } else {
    // Request failed
    print('Request failed with status: ${response.statusCode}');
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({
    super.key,
  });

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // final List<CardHome> books = [
  //   const CardHome(
  //     imageUrl: 'assets/book1.jpg',
  //     bookTitle: 'Secret',
  //   ),
  //   const CardHome(
  //     imageUrl: 'assets/book2.jpg',
  //     bookTitle: 'Harry potter',
  //   ),
  //   const CardHome(
  //     imageUrl: 'assets/book3.jpg',
  //     bookTitle: 'Dairy of ..',
  //   ),
  //   const CardHome(
  //     imageUrl: 'assets/book4.jpg',
  //     bookTitle: 'in a blink',
  //   ),
  //   const CardHome(
  //     imageUrl: 'assets/book5.jpg',
  //     bookTitle: 'flash',
  //   ),
  //   const CardHome(
  //     imageUrl: 'assets/book6.jpg',
  //     bookTitle: 'naruto',
  //   ),
  // ];

  final List<VerticalRowImages> author = [
    VerticalRowImages(
      image: 'assets/person1.jpg',
      title: 'Canery',
      onTap: () {},
    ),
    VerticalRowImages(
      image: 'assets/person2.jpg',
      title: 'James',
      onTap: () {},
    ),
    VerticalRowImages(
      image: 'assets/person3.jpg',
      title: 'Wisdom',
      onTap: () {},
    ),
    VerticalRowImages(
      image: 'assets/person4.jpg',
      title: 'Jesse',
      onTap: () {},
    ),
    VerticalRowImages(
      image: 'assets/person5.jpg',
      title: 'Emmanuel',
      onTap: () {},
    ),
    VerticalRowImages(
      image: 'assets/person6.jpg',
      title: 'Tom',
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        // children: [
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       left: 20,
        //     ),
        //     child: Column(
        //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         SearchContainer(
        //           text: 'Search for books',
        //           icon: Icons.search,
        //         ),
        //         Column(
        //           children: [
        //             // const SectionHeading(
        //             //   title: 'Popular Authors',
        //             //   showActionButton: false,
        //             // ),
        //             // SizedBox(
        //             //   height: 150, // Adjust the height as per your requirement
        //             //
        //             //
        //             //       child: ListView.separated(
        //             //         physics: const AlwaysScrollableScrollPhysics(),
        //             //         scrollDirection: Axis.horizontal,
        //             //         separatorBuilder: (_, __) => const SizedBox(width: 12),
        //             //         itemCount: 6,
        //             //         itemBuilder: (_, index) {
        //             //           return author[index];
        //             //         },
        //             //       ),
        //             //
        //             // ),
        //             const SectionHeading(
        //                 showActionButton: true, title: 'Recommended for you'),
        //             SizedBox(
        //               height: 100,
        //               child: ListView.separated(
        //                 scrollDirection: Axis.horizontal,
        //                 itemCount: 6,
        //                 separatorBuilder: (context, _) =>
        //                     const SizedBox(width: 12),
        //                 itemBuilder: (context, index) {
        //                   return books[index];
        //                 },
        //               ),
        //             ),
        //             const SectionHeading(
        //                 showActionButton: true, title: 'Trending '),
        //             SizedBox(
        //               height: 200,
        //               child: ListView.separated(
        //                 scrollDirection: Axis.horizontal,
        //                 itemCount: 6,
        //                 separatorBuilder: (context, _) =>
        //                     const SizedBox(width: 12),
        //                 itemBuilder: (context, index) => const Column(
        //                   children: [
        //                     Image(
        //                       image: AssetImage('assets/book1.jpg'),
        //                     ),
        //                     Text(
        //                       'Title',
        //                       style: TextStyle(
        //                         fontSize: 15,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //             const SectionHeading(
        //                 showActionButton: true, title: 'New Releases '),
        //             ListView.separated(
        //               scrollDirection: Axis.horizontal,
        //               itemCount: 6,
        //               separatorBuilder: (context, _) =>
        //                   const SizedBox(width: 12),
        //               itemBuilder: (context, index) => const Column(
        //                 children: [
        //                    Image(
        //                      image: AssetImage('assets/book1.jpg'),
        //                    ),
        //                   Text(
        //                     'Title',
        //                     style: TextStyle(
        //                       fontSize: 15,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   )
        // ],
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child:  SearchContainer(
              text: 'Search for books',
              icon: Icons.search,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SectionHeading(
              title: 'Popular Authors',
             showActionButton: false,
             ),
          ),
          Padding(padding: const EdgeInsets.only(left:20.0),
          child:
            SizedBox(
              height: 150, // Adjust the height as per your requirement
              child: ListView.separated(
                // physics: NeverScrollableScrollPhysics(),

                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemCount: 6,
                itemBuilder: (_, index) {
                  return author[index];
                  },
              ),
            ),
          ),
          // const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 2.0),
            child: SectionHeading(showActionButton: true, title: 'Recommended for you',),
          ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0),
      child: SizedBox(
                    height: 100,
                    // child: ListView.separated(
                    //   scrollDirection: Axis.horizontal,
                    //   itemCount: 6,
                    //   separatorBuilder: (context, _) =>
                    //       const SizedBox(width: 12),
                    //   itemBuilder: (context, index) {
                    //     return books[index];
                    //   },
                    // ),
       child:    ListView.builder(
         scrollDirection: Axis.horizontal,
         itemBuilder: (context, index) {
           final book = books[index];
           return Card(
             child: Column(
               children: [
                 Image.network(book.imageUrl),
                 Text(book.title),
               ],
             ),
           );
         },
         itemCount: books.length,
       ),
                  ),
    ),

        ],
      ),
    );
  }
}

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
    required this.imageUrl,
    required this.bookTitle,
  });
  final String imageUrl;
  final String bookTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          bookTitle,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class Book {
  final String title;
  final String imageUrl;

  Book({required this.title, required this.imageUrl});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['volumeInfo']['title'],
      imageUrl: json['volumeInfo']['imageLinks']['thumbnail'],
    );
  }
}
