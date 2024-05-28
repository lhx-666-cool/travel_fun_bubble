// ignore: file_names
import 'package:flutter/material.dart';
import '../utils/search.dart';

class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text(
              '欢迎回来，小泉泉！',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0), // 添加四周的内边距
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // 头像区域
                Container(
                  child: const Row(
                    children: <Widget>[
                      // 头像圆框
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, size: 30),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text('查看我的个人档案'),
                                Icon(Icons.arrow_right_alt)
                              ]
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // 搜索栏
                const Search(contentText: "搜索我的..."),
                // 我发布的、我加入的、活动
                ...buildSection('我发布的'),
                ...buildSection('我加入的'),
                ...buildSection('活动'),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  // 生成可滑动卡片的列表
  List<Widget> buildSection(String title) {
    return [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            const Icon(Icons.note, color: Colors.grey),
            const SizedBox(width: 10),
            Expanded(
              child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      // 可滑动的卡片列表
      SizedBox(
        height: 150, 
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(3, (index) => buildCard(index)),
        ),
      ),
    ];
  }

  // 构建单个卡片
  Widget buildCard(int index) {
    return Container(
      width: 200, // 卡片宽度
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          // 图片展示区
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://z1.ax1x.com/2023/12/05/pi6bqA0.png'), // 示例图片URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // 文字说明及点赞数
          Container(
            height: 50,
            color: Colors.grey[300],
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('卡片说明文字 $index'),
                const Icon(Icons.favorite, color: Colors.red),
                const Text('点赞数'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}