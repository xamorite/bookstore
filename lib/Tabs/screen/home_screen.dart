import 'package:bookstore/constant/constant.dart';
import 'package:bookstore/Tabs/screen/books_list.dart';
import 'package:bookstore/Tabs/screen/search_screen.dart';
import 'package:bookstore/Tabs/books/adventure_books.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/Tabs/books/anime_books.dart';
import 'package:bookstore/Tabs/headline.dart';
import 'package:bookstore/Tabs/books/horror.dart';
import 'package:bookstore/Tabs/books/novel.dart';

import 'package:bookstore/Tabs/books/popular_books.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final TextEditingController searchController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Container(
                    height: height / 2.5,
                    //height: constraints.maxHeight * 0.8,
                    //width: width,
                    //margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45),
                      ),
                    ),
                    child: SafeArea(
                      minimum: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              showSearch(
                                  context: context,
                                  delegate: CustomSearchDelegate());
                            },
                            child: Container(
                              padding:const EdgeInsets.all(12),
                              height: 50,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 1, color: AppColors.black),
                              ),
                              child:const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children:  [
                                  Text("Search for Books"),
                                  Icon(Icons.search),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            const  Text('Trending Now',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.orange)),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BookList(name: "Fiction")));
                                },
                                child:const Text(
                                  "See All",
                                  style:  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: height / 5.3,
                      //height: constraints.maxHeight * 0.38,
                      margin: const EdgeInsets.only(left: 16),
                      child: const PopularBooks(),
                    ),
                  ),
                ],
              ),
            ),
            Headline(
              category: "Anime",
              showAll: "Anime",
            ),
            SizedBox(
              //color: Colors.grey.shade100,
              height: height / 3.4,
              child: const AnimeBooks(),
            ),
            Headline(
              category: "Action & Adventure",
              showAll: "Action & Adventure",
            ),
            SizedBox(
              //color: Colors.yellow,
              height: height / 3.4,
              child: const AdevntureBooks(),
            ),
            Headline(
              category: "Novel",
              showAll: "Novel",
            ),
            SizedBox(
              //color: Colors.yellow,
              height: height / 3.4,
              child: const NovelBooks(),
            ),
            Headline(
              category: "Horror",
              showAll: "Horror",
            ),
            SizedBox(
              //color: Colors.yellow,
              height: height / 3.4,
              child: const HorrorBooks(),
            ),
          ],
        ),
      ),
    );
  }
}