import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: double.infinity, child: ServicePage()
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     // const SearchWidget(),
        //     ServicePage()
        //   ],
        // )
        );
  }
}
// class SearchWidget extends StatefulWidget {
//   const SearchWidget({super.key});

//   @override
//   _SearchWidgetState createState() => _SearchWidgetState();
// }

// class _SearchWidgetState extends State<SearchWidget> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       height: 80,

//       child: TextField(
//         controller: _controller,
//         decoration: InputDecoration(

//           prefixIcon: const Icon(Icons.search),
//           suffixIcon: _controller.text.isNotEmpty
//               ? IconButton(
//                   icon: const Icon(Icons.clear),
//                   onPressed: () {
//                     _controller.clear();
//                     setState(() {});
//                   },
//                 )
//               : null,
//           hintText: 'Search',
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(50),
//             borderSide: BorderSide.none,
//           ),
//           filled: true,
//           fillColor: Colors.grey[200],
//         ),
//         onChanged: (value) {
//           setState(() {});
//         }
//       ),
//     );
//   }
// }
class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            const SizedBox(height: 16),
            const Text(
              '图书馆',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Expanded(
                  child: ServiceCard(
                    title: '西电O2O书蜗小程序',
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ServiceCard(
                    title: '图书在线阅读',
                    color: Colors.pink[100]!,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              '所有服务',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ServiceList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: '搜索图书/服务',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final Color color;

  const ServiceCard({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border:
                Border.all(width: 10, color: const Color.fromARGB(1, 0, 0, 0))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              'https://www.xdu-inspur.club/img/xdu/xdulogo.png', // 替换为你的图片URL
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 5),
            Expanded(
                child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
        ));
  }
}

class ServiceList extends StatelessWidget {
  final List<String> services = [
    '自习打卡小程序',
    '在线创作社区',
    '校园活动速递',
    '在线心理咨询',
    '空闲教室查询',
    '在线心理咨询',
    '空闲教室查询'
  ];

  ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(131, 139, 195, 74),
                ),
                child: ListTile(
                  title: Text(
                    '${index + 1}. ${services[index]}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ));
          },
        ));
  }
}
