import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('더보기')),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('images/bbongflix_logo.png'),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'JH KIM',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit, color: Colors.white),
                          SizedBox(width: 6),
                          Text(
                            "프로필 수정",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: Colors.black38,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: .7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Icon(Icons.download, color: Colors.white),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "저장한 콘텐츠 목록",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "저장하신 영화와 시리즈가 여기에 표시됩니다.",
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),

                    Icon(Icons.arrow_right, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
