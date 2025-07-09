import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/model/model_move.dart';
import 'package:new_flutter/screen/detail_screen.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;

  CarouselImage({required this.movies});

  @override
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;

  int _currentPage = 0;
  String _currentKeyword = '';

  @override
  void initState() {
    super.initState();

    movies = widget.movies;
    images = movies
        .map((m) => Image.asset('images/${m.poster}', fit: BoxFit.cover))
        .toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(padding: EdgeInsets.all(40)),

          CarouselSlider(
            items: images,
            options: CarouselOptions(
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                  _currentKeyword = keywords[_currentPage];
                });
              },
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Text(_currentKeyword, style: TextStyle(fontSize: 11)),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(likes[_currentPage] ? Icons.check : Icons.add),
                      color: likes[_currentPage] ? Colors.green : Colors.red,
                      onPressed: () {
                        setState(() {
                          likes[_currentPage] = !likes[_currentPage];
                        });
                      },
                    ),
                    Text('내가 찜한 콘텐츠', style: TextStyle(fontSize: 11)),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow, color: Colors.white),
                      ),

                      Text('재생', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) =>
                                  DetailScreen(movie: movies[_currentPage]),
                            ),
                          );
                        },
                        icon: Icon(Icons.info_outline, color: Colors.white),
                      ),

                      Text('정보', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: makeIndicator(images, _currentPage),
          ),
        ],
      ),
    );
  }
}

List<Widget> makeIndicator(List list, int currentPage) {
  return list.map((item) {
    int index = list.indexOf(item);
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index ? Colors.white : Colors.grey,
      ),
    );
  }).toList();
}
