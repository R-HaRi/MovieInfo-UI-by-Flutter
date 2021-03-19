import 'package:flutter/material.dart';
import 'package:movie_info/components/genreCard.dart';

import '../../../constants.dart';

class Genres extends StatefulWidget {
  @override
  _GenresState createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  List<String> genres = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(
                genre: genres[index],
              )),
    );
  }
}
