import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('내 근처'),
            const SizedBox(width: 4.0),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.pencil)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "좌동 주변 가게를 찾아 보세요.",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50, // 명시적으로 높이 지정
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 16.0),
                  TagItem('인테리어'),
                  const SizedBox(width: 16.0),
                  TagItem('학원'),
                  const SizedBox(width: 16.0),
                  TagItem('이사'),
                  const SizedBox(width: 16.0),
                  TagItem('카페'),
                  const SizedBox(width: 16.0),
                  TagItem('용달'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  final String text;
  const TagItem(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: Colors.grey,
          side: BorderSide(color: Colors.grey),
        ),
        child: Text(text, style: TextTheme().bodyMedium),
      ),
    );
  }
}
