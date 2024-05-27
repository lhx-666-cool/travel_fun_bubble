// ignore: file_names
import 'package:flutter/material.dart';
import './utils/home_botton_item.dart';
import './pages/flutter_map.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Expanded(
            child: Stack(
              children: <Widget>[
                // 假设的地图组件
                // Container(color: Colors.blue),
                // 地图上的加减按钮
                MapPage(),
                // Positioned(
                //   right: 10,
                //   bottom: 50,
                //   child: Column(
                //     children: <Widget>[
                //       FloatingActionButton(
                //         heroTag: 'iconadd',
                //         onPressed: () {},
                //         mini: true,
                //         child: const Icon(Icons.add),
                //       ),
                //       const SizedBox(height: 10),
                //       FloatingActionButton(
                //         heroTag: 'iconremove',
                //         onPressed: () {},
                //         mini: true,
                //         child: const Icon(Icons.remove),
                //       ),
                //     ],
                //   ),
                // ),
                // 地图上的其他按钮或指示器（例如定位）
              ],
            ),
          ),
          // 图片滚动区域
          Container(
            height: 80,
            color: const Color.fromARGB(0, 255, 255, 255),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  width: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  width: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  width: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.all(8.0),
                ),
                // 更多灰色块代表图片
              ],
            ),
          ),
          // 文本输入区域
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: '搜索地点、小区、宝物......',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          // 底部导航按钮区域
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const HomeBotttonItem(
                    iconData: Icons.music_note,
                    label: '旅行',
                    iconColor: Colors.blue),
                const HomeBotttonItem(
                    iconData: Icons.local_offer,
                    label: '探索',
                    iconColor: Colors.orange),
                GestureDetector(
                  child: const HomeBotttonItem(
                      iconData: Icons.message,
                      label: '想法',
                      iconColor: Colors.blue),
                  onTap: () {
                    Navigator.pushNamed(context, '/think');
                    // print("1");
                  },
                ),
                GestureDetector(
                  child: const HomeBotttonItem(
                      iconData: Icons.person,
                      label: '小组',
                      iconColor: Colors.orange),
                  onTap: () {
                    Navigator.pushNamed(context, '/group');
                    // print("1");
                  },
                ),
                GestureDetector(
                  child: const HomeBotttonItem(
                      iconData: Icons.menu,
                      label: '活动',
                      iconColor: Colors.blue),
                  onTap: () {
                    Navigator.pushNamed(context, '/activity');
                    // print("1");
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
