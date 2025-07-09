import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SizedBox(
        height: 56,
        child: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home, color: Colors.white)),
            Tab(icon: Icon(Icons.search, color: Colors.white)),
            Tab(icon: Icon(Icons.favorite, color: Colors.white)),
            Tab(icon: Icon(Icons.more, color: Colors.white)),
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
