import 'package:flutter/material.dart';
import './Home.dart';
import './Message.dart';
import './My.dart';
import './discover_page.dart';
import './pages/thinks.dart';
import './pages/group.dart';
import './pages/activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页组件示例',
      home: const HomePage(),
      routes: {
        '/think': (context) => ThinkPage(),
        '/group': (context) => GroupPage(),
        '/activity': (context) => ActiviyPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    DiscoverPage(),
    const Message(),
    const My(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("主页"),
        backgroundColor: const Color.fromARGB(117, 3, 168, 244),
        centerTitle: true, // 这会让标题文本居中
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, 
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue, // 选中项的颜色
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: '发现'),
          BottomNavigationBarItem(icon: Icon(Icons.messenger_outline), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '我的'),
        ],
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final String title;
  final String content;

  const PageWidget(this.title, this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {}, 
            child: Text(title)
          ),
          const SizedBox(height: 20),
          Text(content),
        ],
      ),
    );
  }
}
