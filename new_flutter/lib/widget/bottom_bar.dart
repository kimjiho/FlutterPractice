import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home, color: Colors.white),
              text: '홈',
            ),
            Tab(
              icon: Icon(Icons.search, color: Colors.white),
              text: '검색',
            ),
            Tab(
              icon: Icon(Icons.favorite, color: Colors.white),
              text: '즐겨찾기',
            ),
            Tab(
              icon: Icon(Icons.more, color: Colors.white),
              text: '더보기',
            ),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
    );
  }
}
