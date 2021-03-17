import 'package:flutter/material.dart';
import 'package:movie_info/screens/home/components/movieCorousel.dart';

import 'package:movie_info/constants.dart';

import 'package:movie_info/screens/home/components/categories.dart';
import 'package:movie_info/screens/home/components/genres.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCorousel()
        ],
      ),
    );
  }
}
