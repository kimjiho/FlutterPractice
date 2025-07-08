import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  String _searchText = "";

  _SearchScreenState() {
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                focusNode: _focusNode,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '검색어를 입력하세요',
                  hintStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  suffixIcon: _searchText.isNotEmpty
                      ? IconButton(
                          icon: Icon(Icons.clear, color: Colors.white),
                          onPressed: () {
                            _searchController.clear();
                            _focusNode.unfocus();
                          },
                        )
                      : null,
                  filled: true,
                  fillColor: Colors.grey[800],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '검색 결과: $_searchText',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
