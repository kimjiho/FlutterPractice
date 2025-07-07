import 'package:flutter/material.dart';
import 'package:new_flutter/model/model_move.dart';
import 'package:new_flutter/screen/detail_screen.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;

  BoxSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('지금 뜨는 콘텐츠'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, movies),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) {
  List<Widget> images = [];

  for (var movie in movies) {
    images.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) => DetailScreen(movie: movie),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'images/${movie.poster}',
              fit: BoxFit.cover,
              width: 100,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
  return images;
}
