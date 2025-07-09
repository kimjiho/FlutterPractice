import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exam Screen')),
      body: Container(child: _commonBuild()),
    );
  }

  Widget _commonBuild() {
    final items = List.generate(10, (i) => '아이템 ${i + 1}');

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.list),
          title: Text(items[index]),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }

  Widget _buildListItem() {
    return ListView(
      children: List.generate(5, (index) {
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('사용자 ${index + 1}'),
            subtitle: Text('설명 텍스트'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      }),
    );
  }
}
