import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.title2,
    required this.rate,
    required this.text,
    required this.title3,
    required this.blogContent,

  }) : super(key: key);
  final String imagePath;
  final String title;
  final String title2;
  final double rate;
  final String text;
  final String title3;
  final String blogContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.28,
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imagePath)
                            ),
                            borderRadius: BorderRadius.circular(24)),
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Lato",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title2,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppinsz",
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        initialRating: rate,
                        glow: false,
                        itemSize: 34,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rate) {
                        },
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          blogContent,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
