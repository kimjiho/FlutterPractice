import 'package:flutter/material.dart';

class LikeScreen extends StatefulWidget {
  @override
  _LikeScreenState createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  Widget _buildBody(BuildContext context) {
    return Text('좋아요한 영화 목록이 여기에 표시됩니다.', style: TextStyle(fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              "즐겨찾기",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 10),

          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [_buildBody(context)],
          ),
        ],
      ),
    );
  }
}
