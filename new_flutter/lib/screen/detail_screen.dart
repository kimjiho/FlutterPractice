import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_flutter/model/model_move.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;

  DetailScreen({required this.movie});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;

  @override
  void initState() {
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/${widget.movie.poster}'),
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.1),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                child: Image.asset(
                                  'images/${widget.movie.poster}',
                                  height: 300,
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  '99% 일치 2019 15+ 시즌 1개',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  widget.movie.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(3),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '재생',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '콘텐츠 설명 블라블라블라',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white70,
                                  ),
                                ),
                              ),

                              // Contents Buttons
                              makeMenuButtons(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeMenuButtons({bool like = false}) {
  return Container(
    padding: EdgeInsets.all(7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            IconButton(
              icon: Icon(like ? Icons.check : Icons.add),
              color: like ? Colors.green : Colors.red,
              onPressed: () {},
            ),
            SizedBox(width: 10),
            Text(
              '내가 짐한 콘텐츠',
              style: TextStyle(fontSize: 11, color: Colors.white70),
            ),
          ],
        ),

        Container(
          padding: EdgeInsets.only(right: 10),
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.thumb_up, color: Colors.white),
              ),

              Text('정보', style: TextStyle(fontSize: 11, color: Colors.white70)),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(right: 10),
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share, color: Colors.white),
              ),

              Text('공유', style: TextStyle(fontSize: 11, color: Colors.white70)),
            ],
          ),
        ),
      ],
    ),
  );
}
