import 'package:flutter/material.dart';
import 'package:new_flutter/screen/home_screen.dart';
import 'package:new_flutter/screen/like_screen.dart';
import 'package:new_flutter/screen/more_screen.dart';
import 'package:new_flutter/screen/search_screen.dart';
import 'package:new_flutter/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // Initialize any necessary data or state here
  }

  @override
  void dispose() {
    // Clean up resources if needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BbongFlix',
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.cyan),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeScreen(),
              SearchScreen(),
              LikeScreen(),
              MoreScreen(),
            ],
          ),

          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
