import 'package:flutter/material.dart';
import './discover_card.dart';
import './utils/search.dart';
class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key});
  final servicelist = [
    '自习打卡小程序',
    '在线创作社区',
    '校园活动速递',
    '在线心理咨询',
    '空闲教室查询',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 40),
            //     child: TextField(
            //       style: const TextStyle(
            //         fontSize: 16,
            //       ),
            //       decoration: InputDecoration(
            //           contentPadding: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 10),
            //           isDense: true,
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(50)),
            //           prefix: const Icon(Icons.search,
            //               color: Color.fromARGB(255, 38, 38, 38)),
            //           hintText: "搜索部门/服务"),
            //     )),
            const Search(contentText: "搜索部门/服务"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.location_on,
                      size: 30, color: Color.fromARGB(255, 20, 118, 198)),
                  Text(
                    "图书馆",
                    style: TextStyle(
                        color: Color.fromARGB(255, 20, 118, 198),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: DiscoverCard(
                          title_: "西电O2O书蜗小程序",
                          color: Color.fromARGB(255, 155, 84, 168)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: DiscoverCard(
                        title_: "图书在线阅读",
                        color: Color.fromARGB(255, 209, 149, 169),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "所有服务",
                style: TextStyle(
                    color: Color.fromARGB(255, 20, 118, 198),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "大家都在看",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightGreen[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                Text((index + 1).toString(),
                                    style: const TextStyle()),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(servicelist[index],
                                    style: const TextStyle())
                              ],
                            ),
                          );
                        })),
              ),
            )
          ],
        ));
  }
}
