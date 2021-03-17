import 'package:flutter/material.dart';

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
          itemBuilder: (context, index) {
            return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: kDefaultPadding),
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  genres[index],
                  style: TextStyle(
                      color: kTextColor.withOpacity(0.8), fontSize: 16),
                ));
          }),
    );
  }
}
