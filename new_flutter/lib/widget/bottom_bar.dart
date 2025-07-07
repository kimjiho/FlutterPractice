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
              icon: Icon(Icons.download, color: Colors.white),
              text: '다운로드',
            ),
            Tab(
              icon: Icon(Icons.settings, color: Colors.white),
              text: '설정',
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
