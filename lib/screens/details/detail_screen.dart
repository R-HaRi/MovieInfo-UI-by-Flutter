import 'package:flutter/material.dart';
import 'package:movie_info/models/movies.dart';
import 'package:movie_info/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
