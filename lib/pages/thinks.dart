import 'package:flutter/material.dart';
import '../utils/think_card.dart';
import '../utils/search.dart';

class ThinkPage extends StatelessWidget {
  final List thinks = [
    {
      'name': '李俊强',
      'fire': '256',
      'commit':
          '西湖，又名钱塘湖，位于中国浙江省杭州市西湖区龙井路1号，杭州市区西部，汇水面积为21.22平方千米，湖面面积为6.38平方千米，为江南三大名湖之一。',
      'feedback': [73, 51, 30, 20, 10]
    },
    {
      'name': '张三',
      'fire': '255',
      'commit':
          '西湖，又名钱塘湖，位于中国浙江省杭州市西湖区龙井路1号，杭州市区西部，汇水面积为21.22平方千米，湖面面积为6.38平方千米，为江南三大名湖之一。',
      'feedback': [73, 51, 30, 20, 10]
    },
    {
      'name': '李四',
      'fire': '111',
      'commit':
          '西湖，又名钱塘湖，位于中国浙江省杭州市西湖区龙井路1号，杭州市区西部，汇水面积为21.22平方千米，湖面面积为6.38平方千米，为江南三大名湖之一。',
      'feedback': [73, 111, 30, 20, 10]
    },
    {
      'name': '王五',
      'fire': '256',
      'commit':
          '西湖，又名钱塘湖，位于中国浙江省杭州市西湖区龙井路1号，杭州市区西部，汇水面积为21.22平方千米，湖面面积为6.38平方千米，为江南三大名湖之一。',
      'feedback': [73, 51, 30, 20, 10]
    },
    {
      'name': '李俊强',
      'fire': '256',
      'commit':
          '西湖，又名钱塘湖，位于中国浙江省杭州市西湖区龙井路1号，杭州市区西部，汇水面积为21.22平方千米，湖面面积为6.38平方千米，为江南三大名湖之一。',
      'feedback': [73, 51, 30, 20, 10]
    },
  ];

  ThinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("想法"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Column(
          children: [
            const Search(contentText: "搜索想法",),
            Expanded(
              child: ListView.builder(
                itemCount: thinks.length,
                itemBuilder: (BuildContext context, int index) {
                  return ThinkCard(
                      name: thinks[index]['name'],
                      fire: thinks[index]['fire'],
                      commit: thinks[index]['commit'],
                      feedback: thinks[index]['feedback']);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
