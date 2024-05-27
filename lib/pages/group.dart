import 'package:flutter/material.dart';
import '../utils/group_card.dart';
import '../utils/search.dart';

class GroupPage extends StatelessWidget {
  final List groups = [
    "星火杯",
    "四级",
    "六级",
    "马拉松",
    "高数",
    "古装",
    "辩论",
    "C语言",
    "新生杯",
    "丁香"
  ];
  GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("小组"),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const Search(contentText: "搜索小组"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: groups.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.8),
                itemBuilder: (BuildContext context, int index) {
                  return GroupCard(name: groups[index]);
                },
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.refresh, color: Colors.blue[600],),
              Text("换一批", style: TextStyle(color: Colors.blue[600])),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  "创建一个小组",
                  style: TextStyle(color: Colors.white),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
