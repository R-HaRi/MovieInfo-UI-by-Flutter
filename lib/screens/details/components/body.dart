import 'package:flutter/material.dart';

import 'package:movie_info/constants.dart';
import 'package:movie_info/models/movies.dart';
import 'package:movie_info/screens/details/components/backDrop_rating.dart';
import 'package:movie_info/screens/details/components/cast_and_crew.dart';

import 'package:movie_info/screens/details/components/genres.dart';
import 'package:movie_info/screens/details/components/title_duration_fav_button.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //it will provide us total height and widthe
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Backdrop_rating(size: size, movie: movie),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleDurationAndFavBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
            child: Text(
              'Plot Summary',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(color: Color(0xFF737599)),
            ),
          ),
          CastAndCrew(
            casts: movie.cast,
          )
        ],
      ),
    );
  }
}
