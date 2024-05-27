import 'package:flutter/material.dart';
import '../utils/search.dart';
import '../utils/recommanded_for_you.dart';
import '../utils/all_activity.dart';

class ActiviyPage extends StatelessWidget {
  const ActiviyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("活动"),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Search(contentText: "搜索感兴趣的活动"),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "为你推荐",
              style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "当前热度最高",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Expanded(
                  child: RecommandCard(
                contentText: "图书馆书架整理活动",
                url_:
                    "https://video.acwing.com/image/default/9606D1B732464C188ED3578E34F6DA01-6-2.jpg?auth_key=1717632000-ac2840wing-0-cea5efa2530005f6709165e4e1a7ecb3",
                color: Colors.brown,
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: RecommandCard(
                contentText: "社团巡演活动",
                url_:
                    "https://video.acwing.com/image/default/9606D1B732464C188ED3578E34F6DA01-6-2.jpg?auth_key=1717632000-ac2840wing-0-cea5efa2530005f6709165e4e1a7ecb3",
                color: Color.fromARGB(255, 25, 118, 210),
              )),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "所有活动",
              style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: AllActivity(
                      activity: [
                        "思想道德与法治",
                        "新生杯篮球比赛",
                        "Github报告会",
                        "华为研究所招待会",
                        "大学生创业宣讲"
                      ],
                      type: "最近",
                      color: Color.fromARGB(255, 76, 175, 139),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: AllActivity(
                      activity: [
                        "四六级模拟考试",
                        "大英杯培训讲座",
                        "教职工羽毛球比赛",
                        "电影协会招新",
                        "丁香公寓防火演练"
                      ],
                      type: "最新",
                      color: Color.fromARGB(255, 222, 210, 103),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
