import 'package:flutter/material.dart';
import 'package:new_flutter/model/model_move.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;

  CircleSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('미리보기'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(movies),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(List<Movie> movies) {
  List<Widget> images = [];

  for (var movie in movies) {
    images.add(
      InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: 48,
            backgroundImage: AssetImage('images/${movie.poster}'),
          ),
        ),
      ),
    );
  }
  return images;
}
